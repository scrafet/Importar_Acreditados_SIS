# Importa Acreditados SIS - Python

Este proyecto es una aplicación Python diseñada para gestionar la importación de acreditados del SIS (Seguro Integral de Salud). Incluye un entorno de despliegue contenerizado con Docker que simula la infraestructura de base de datos necesaria.

## Estructura del Proyecto (Profesional)

*   `src/`: Código fuente de la aplicación.
    *   `app.py`: Aplicación principal (Flask).
    *   `templates/`: Plantillas HTML (Premium).
*   `Dockerfile`: Definición de la imagen Docker para la aplicación.
*   `docker-compose.yml`: Orquestación para el despliegue de la aplicación.

## Requisitos Previos

*   [Docker Desktop](https://www.docker.com/products/docker-desktop) instalado y corriendo.
*   Git (opcional).

### Paso 1: Iniciar la aplicación

Desde la raíz del proyecto, ejecuta:

```bash
docker-compose up --build
```

**Qué sucede:**
1.  Se construye la imagen de la aplicación Python optimizada.
2.  La aplicación estará disponible en `http://localhost:44321`.

### Paso 2: Configuración de Base de Datos
La aplicación está diseñada para conectarse a un servidor SQL Server externo. Asegúrate de tener las credenciales y la IP del servidor preparadas para ingresarlas en la interfaz web.

### Paso 2: Verificar el despliegue

*   **Aplicación web:** `http://localhost:44321`.
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
