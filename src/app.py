from flask import Flask, render_template, request, jsonify, Response, stream_with_context
import pyodbc
import zipfile
import os
import shutil
import csv
import io
import time

app = Flask(__name__)

# Configuration
UPLOAD_FOLDER = 'uploads'
EXTRACT_FOLDER = 'temp_extract'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

if not os.path.exists(UPLOAD_FOLDER):
    os.makedirs(UPLOAD_FOLDER)

if not os.path.exists(EXTRACT_FOLDER):
    os.makedirs(EXTRACT_FOLDER)

def get_db_connection(server, port, user, password, database):
    # Driver needs to match what is installed in Dockerfile (msodbcsql17)
    # Syntax for server with port is usually "server,port"
    conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server},{port};DATABASE={database};UID={user};PWD={password}'
    return pyodbc.connect(conn_str)


def process_bulk(cursor, rows):
    """
    Strategy 2: Bulk Import (Optimized)
    Inserts into a Temp Table then merges.
    """
    # 1. Create Temp Table
    cursor.execute("""
        CREATE TABLE #SisFiliacionesTemp (
            idSiasis int, Codigo varchar(2), AfiliacionDisa varchar(3),
            AfiliacionTipoFormato varchar(2), AfiliacionNroFormato varchar(10),
            AfiliacionNroIntegrante varchar(2), DocumentoTipo varchar(1),
            CodigoEstablAdscripcion varchar(10), AfiliacionFecha datetime,
            Paterno varchar(40), Materno varchar(40), Pnombre varchar(70),
            Onombres varchar(70), Genero varchar(1), Fnacimiento datetime,
            IdDistritoDomicilio varchar(6), Estado varchar(1), Fbaja varchar(10),
            DocumentoNumero varchar(10), MotivoBaja varchar(70)
        )
    """)

    # 2. Bulk Insert into Temp
    sql_insert_temp = """
        INSERT INTO #SisFiliacionesTemp (
            idSiasis, Codigo, AfiliacionDisa, AfiliacionTipoFormato, AfiliacionNroFormato,
            AfiliacionNroIntegrante, DocumentoTipo, CodigoEstablAdscripcion,
            AfiliacionFecha, Paterno, Materno, Pnombre, Onombres,
            Genero, Fnacimiento, IdDistritoDomicilio, Estado, Fbaja,
            DocumentoNumero, MotivoBaja
        ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
    """
    # pyodbc fast_executemany
    cursor.fast_executemany = True
    cursor.executemany(sql_insert_temp, rows)

    # 3. Merge Logic (Update existing)
    sql_update = """
        UPDATE T
        SET
            T.AfiliacionDisa = S.AfiliacionDisa,
            T.AfiliacionTipoFormato = S.AfiliacionTipoFormato,
            T.AfiliacionNroFormato = S.AfiliacionNroFormato,
            T.AfiliacionNroIntegrante = S.AfiliacionNroIntegrante,
            T.DocumentoTipo = S.DocumentoTipo,
            T.CodigoEstablAdscripcion = S.CodigoEstablAdscripcion,
            T.AfiliacionFecha = S.AfiliacionFecha,
            T.Paterno = S.Paterno,
            T.Materno = S.Materno,
            T.Pnombre = S.Pnombre,
            T.Onombres = S.Onombres,
            T.Genero = S.Genero,
            T.Fnacimiento = S.Fnacimiento,
            T.IdDistritoDomicilio = S.IdDistritoDomicilio,
            T.Estado = S.Estado,
            T.Fbaja = S.Fbaja,
            T.DocumentoNumero = S.DocumentoNumero,
            T.MotivoBaja = S.MotivoBaja
        FROM SisFiliaciones T
        INNER JOIN #SisFiliacionesTemp S ON T.idSiasis = S.idSiasis AND T.Codigo = S.Codigo
    """
    cursor.execute(sql_update)

    # 4. Insert New
    sql_insert = """
        INSERT INTO SisFiliaciones (
            idSiasis, Codigo, AfiliacionDisa, AfiliacionTipoFormato, AfiliacionNroFormato,
            AfiliacionNroIntegrante, DocumentoTipo, CodigoEstablAdscripcion,
            AfiliacionFecha, Paterno, Materno, Pnombre, Onombres,
            Genero, Fnacimiento, IdDistritoDomicilio, Estado, Fbaja,
            DocumentoNumero, MotivoBaja
        )
        SELECT
            idSiasis, Codigo, AfiliacionDisa, AfiliacionTipoFormato, AfiliacionNroFormato,
            AfiliacionNroIntegrante, DocumentoTipo, CodigoEstablAdscripcion,
            AfiliacionFecha, Paterno, Materno, Pnombre, Onombres,
            Genero, Fnacimiento, IdDistritoDomicilio, Estado, Fbaja,
            DocumentoNumero, MotivoBaja
        FROM #SisFiliacionesTemp S
        WHERE NOT EXISTS (
            SELECT 1 FROM SisFiliaciones T WHERE T.idSiasis = S.idSiasis AND T.Codigo = S.Codigo
        )
    """
    cursor.execute(sql_insert)

    # 5. Cleanup
    cursor.execute("DROP TABLE #SisFiliacionesTemp")

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/import', methods=['POST'])
def import_data():
    # 1. Retrieve parameters OUTSIDE the generator
    try:
        if 'file' not in request.files:
            return jsonify({'status': 'error', 'message': 'No file part'})
        
        file = request.files['file']
        if file.filename == '':
            return jsonify({'status': 'error', 'message': 'No selected file'})
            
        upload_folder = app.config['UPLOAD_FOLDER']

        server = request.form['server']
        port = request.form.get('port', '1433')
        user = request.form['user']
        password = request.form['password']
        zip_password = request.form.get('zip_password', '')

    except Exception as e:
         return jsonify({'status': 'error', 'message': f'Error validando parámetros: {str(e)}'})

    def generate():
        try:
            if not file or not file.filename.endswith('.zip'):
                yield f"data: Error: Invalid file format\n\n"
                return

            # Save File
            filepath = os.path.join(upload_folder, file.filename)
            file.save(filepath)
            yield f"data: Log: Archivo subido. Iniciando extracción...\n\n"

            try:
                # Extract ZIP
                with zipfile.ZipFile(filepath, 'r') as zip_ref:
                    if zip_password:
                        zip_ref.extractall(EXTRACT_FOLDER, pwd=bytes(zip_password, 'utf-8'))
                    else:
                        zip_ref.extractall(EXTRACT_FOLDER)
                
                yield f"data: Log: Archivo extraído correctamente.\n\n"

                extracted_files = os.listdir(EXTRACT_FOLDER)
                if not extracted_files:
                    yield f"data: Error: El ZIP está vacío.\n\n"
                    # Cleanup
                    try:
                        os.remove(filepath)
                    except: pass
                    return

                target_file = os.path.join(EXTRACT_FOLDER, extracted_files[0])
                yield f"data: Log: Procesando archivo: {extracted_files[0]}\n\n"

                # Connect to DB
                yield f"data: Log: Conectando a Base de Datos {server}:{port}...\n\n"
                
                # Small delay to ensure UI updates
                time.sleep(0.5) 
                
                conn = get_db_connection(server, port, user, password, 'SIGH_EXTERNA')
                cursor = conn.cursor()
                yield f"data: Log: Conexión establecida.\n\n"

                processed_count = 0
                rows_buffer = []

                # Count total lines
                total_lines = 0
                try:
                     with open(target_file, 'r', encoding='latin-1') as f:
                        for _ in f: total_lines += 1
                except:
                    pass
                yield f"data: Log: Total líneas estimadas: {total_lines}\n\n"

                with open(target_file, 'r', encoding='latin-1') as f:
                    reader = csv.reader(f)
                    
                    BATCH_SIZE = 5000
                    yield f"data: Log: Iniciando carga Bulk (Lote: {BATCH_SIZE})...\n\n"
                    
                    for row in reader:
                        if len(row) >= 20:
                            rows_buffer.append(row[:20])
                            processed_count += 1

                            if len(rows_buffer) >= BATCH_SIZE:
                                process_bulk(cursor, rows_buffer)
                                conn.commit()
                                process_percent = int((processed_count / total_lines) * 100) if total_lines > 0 else 0
                                yield f"data: Progress: {processed_count} registros procesados ({process_percent}%)\n\n"
                                rows_buffer = []

                    if rows_buffer:
                        process_bulk(cursor, rows_buffer)
                        conn.commit()
                        yield f"data: Log: Procesando bloque final de {len(rows_buffer)} registros...\n\n"

                conn.close()
                yield f"data: Success: Proceso finalizado. Total importado: {processed_count}\n\n"

                # Cleanup
                shutil.rmtree(EXTRACT_FOLDER)
                os.makedirs(EXTRACT_FOLDER)
                os.remove(filepath)

            except Exception as e:
                yield f"data: Error: {str(e)}\n\n"
                
        except Exception as e:
            yield f"data: Error: {str(e)}\n\n"

    # Use stream_with_context to keep request valid
    return Response(stream_with_context(generate()), mimetype='text/event-stream')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=44321)
