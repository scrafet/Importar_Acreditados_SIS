# Importa Acreditados SIS - Python

Este proyecto es una aplicación Python diseñada para gestionar la importación de acreditados del SIS (Seguro Integral de Salud). Incluye un entorno de despliegue contenerizado con Docker que simula la infraestructura de base de datos necesaria.

## Estructura del Proyecto (Profesional)

*   `src/`: Código fuente de la aplicación.
    *   `app.py`: Aplicación principal (Flask).
    *   `templates/`: Plantillas HTML.
*   `docker/`: Archivos de configuración de infraestructura.
    *   `db-init/`: Scripts SQL para inicializar la base de datos.
*   `Dockerfile`: Definición de la imagen Docker para la aplicación (usa `src/`).
*   `docker-compose.yml`: Orquestación de servicios (App + SQL Server) situada en la raíz.

## Requisitos Previos

*   [Docker Desktop](https://www.docker.com/products/docker-desktop) instalado y corriendo.
*   Git (opcional).

## Despliegue y Ejecución

El entorno levanta una instancia de SQL Server y la aplicación Python conectada a ella. Todo se gestiona desde la raíz del proyecto.

### Paso 1: Iniciar los servicios

Desde la raíz del proyecto, ejecuta:

```bash
docker-compose up --build
```

**Qué sucede:**
1.  Se descarga la imagen de SQL Server 2019.
2.  Se construye la imagen de la aplicación Python copiando el contenido de `src/`.
3.  Se inicia el contenedor de base de datos (`db`).
4.  Un servicio auxiliar (`db-init`) ejecuta automáticamente los scripts en `docker/db-init/` para crear las tablas y procedimientos.
5.  La aplicación se conecta a la base de datos.
6.  La aplicación estará disponible en `http://localhost:8080`.

### Paso 2: Verificar el despliegue

*   **Aplicación web:** `http://localhost:8080`.
*   **Base de datos:**
    *   **Host:** `localhost`
    *   **Puerto:** `14333`
    *   **Usuario:** `sa`
    *   **Contraseña:** `YourStrong@Passw0rd`

## Solución de Problemas

*   **La base de datos está vacía**:
    *   Revisa los logs del servicio `db-init`. El servicio ejecuta los scripts secuencialmente.
*   **Conexión fallida**:
    *   Asegúrate de que el contenedor `db` esté marcado como `healthy`.
