# Ghost CMS 5.110

Este proyecto configura un entorno Docker para ejecutar Ghost CMS versión 5.110 usando SQLite como base de datos.

## Requisitos previos

- Docker
- Docker Compose

## Puertos

- Ghost: http://localhost:5110

## Ejecución

Para iniciar el entorno de Ghost:

```bash
# Usando Docker Compose
docker-compose up -d

# Verificar que está funcionando
docker-compose ps
```

## Acceso

- **Panel de administración**: http://localhost:5110/ghost
- **Sitio web**: http://localhost:5110

## Volúmenes

- `ghost_5110_content`: Almacena todos los datos de Ghost (temas, imágenes, base de datos SQLite)

## Detener el entorno

```bash
docker-compose down
```

## Eliminar completamente el entorno

Para eliminar el entorno incluyendo volúmenes:

```bash
docker-compose down -v
```

## Información adicional

- Ghost utiliza SQLite como base de datos por defecto
- El sitio está configurado en modo desarrollo
- Los datos se persisten incluso después de reiniciar el contenedor
- Esta versión incluye las características más recientes de Ghost 5.x



"NAME": "Grupo9"
"EMAIL": "grupo9@uniandes.edu.co",
"PASSWORD": "adminadmin",

