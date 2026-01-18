# Importa Acreditados SIS - Python

Este proyecto es una aplicación Python diseñada para gestionar la importación de acreditados del SIS (Seguro Integral de Salud). Incluye un entorno de despliegue contenerizado con Docker que simula la infraestructura de base de datos necesaria.

## Estructura del Proyecto

*   `app.py`: Aplicación principal (Flask/Python).
*   `Dockerfile`: Definición de la imagen Docker para la aplicación.
*   `test/`: Carpeta que contiene la configuración para el despliegue local y pruebas.
    *   `docker-compose.yml`:Orquestación de servicios (App + Base de Datos SQL Server).
    *   `db-init/`: Scripts SQL para inicializar la base de datos (creación de tablas y procedimientos).

## Requisitos Previos

*   [Docker Desktop](https://www.docker.com/products/docker-desktop) instalado y corriendo.
*   Git (opcional, para clonar el repositorio).

## Despliegue y Ejecución (Entorno de Pruebas)

El entorno de pruebas levanta una instancia de SQL Server y la aplicación Python conectada a ella.

### Paso 1: Ubicarse en el directorio correcto

La configuración de Docker Compose se encuentra en la carpeta `test`. **Es crucial ejecutar los comandos desde este directorio.**

```bash
cd test
```

### Paso 2: Iniciar los servicios

Ejecuta el siguiente comando para construir la imagen y levantar los contenedores:

```bash
docker-compose up --build
```

**Que sucederá:**
1.  Se descargará la imagen de SQL Server 2019.
2.  Se construirá la imagen de la aplicación Python usando el `Dockerfile` en la raíz.
3.  Se iniciará el contenedor de base de datos (`db`).
4.  **Importante:** Un servicio auxiliar (`db-init`) esperará a que la base de datos esté lista y ejecutará automáticamente los scripts SQL ubicados en `test/db-init/`. Verás logs indicando el progreso de cada script (`00_create_dbs.sql`, `01_SIGH.sql`, etc.).
5.  Finalmente, la aplicación (`app`) iniciará y se conectará a la base de datos.
6.  La aplicación estará disponible en `http://localhost:5000`.

### Paso 3: Verificar el despliegue

*   **Aplicación web:** Abre tu navegador y visita `http://localhost:5000`. Deberías ver la interfaz de usuario.
*   **Base de datos:** Puedes conectarte a la base de datos usando cualquier cliente SQL (como SSMS o DBeaver) con las siguientes credenciales:
    *   **Host:** `localhost`
    *   **Puerto:** `14333`
    *   **Usuario:** `sa`
    *   **Contraseña:** `YourStrong@Passw0rd`

## Pruebas

Una vez desplegado el entorno, puedes realizar las siguientes pruebas:

1.  **Carga de Archivos:** Usa la interfaz web para subir los archivos de acreditados y verificar que se procesen correctamente.
2.  **Verificación en BD:** Conecta tu cliente SQL y verifica que las tablas en las bases de datos `SIGH`, `BDHIS_MINSA`, etc., se hayan poblado o actualizado según la lógica de la aplicación.

## Solución de Problemas Comunes

*   **Error: `no configuration file provided: not found`**:
    *   Esto ocurre si intentas ejecutar `docker-compose up` desde la raíz del proyecto. Asegúrate de estar dentro de la carpeta `test/` (`cd test`).

*   **La base de datos está vacía**:
    *   Revisa los logs del servicio `db-init` en la terminal. Si hubo un error en los scripts SQL, aparecerá allí. El servicio `db-init` está diseñado para ejecutar los scripts secuencialmente.

*   **Conexión fallida desde la App**:
    *   Asegúrate de que el contenedor `db` esté marcado como `healthy`. La aplicación depende de que la base de datos esté lista.
