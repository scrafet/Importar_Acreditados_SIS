# Importa Acreditados SIS - Python

Este proyecto es una aplicación Python diseñada para gestionar la importación de acreditados del SIS (Seguro Integral de Salud). Incluye un entorno de despliegue contenerizado con Docker que simula la infraestructura de base de datos necesaria.

## Estructura del Proyecto (Profesional)

*   `src/`: Código fuente de la aplicación Flask.
*   `Dockerfile`: Definición de la imagen optimizada (Multi-stage).
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
### Paso 2: Configuración de Base de Datos
La aplicación requiere un servidor SQL Server externo (o uno ya existente en tu red). 
1. Asegúrate de que la tabla `SisFiliaciones` esté creada en el servidor destino.
2. Ingresa la IP, puerto y credenciales del servidor en la interfaz web de la aplicación.

### Paso 2: Verificar el despliegue

*   **Aplicación web:** `http://localhost:44321`.

## Solución de Problemas

*   **La base de datos está vacía**:
    *   Revisa los logs del servicio `db-init`. El servicio ejecuta los scripts secuencialmente.
*   **Conexión fallida**:
    *   Asegúrate de que el contenedor `db` esté marcado como `healthy`.
