# Proyecto de django, postgresql, redis y docker 
## Descripción
Este proyecto es un ejemplo de como usar docker para crear un entorno de desarrollo con django, postgresql y redis.

## Requisitos
- Docker
- Docker-compose

## Instalación
1. Clonar el repositorio
2. Ejecutar el comando `docker-compose up -d --build`

## Comandos útiles
- Para detener los contenedores, ejecutar el comando `docker-compose down`
- Para ver los logs de los contenedores, ejecutar el comando `docker-compose logs -f`
- Para acceder a la consola de un contenedor, ejecutar el comando `docker exec -it <nombre del contenedor> bash`

## Comando utilies de django
- Para crear un super usuario, ejecutar el comando `docker-compose exec web python manage.py createsuperuser`
- Para crear una migración, ejecutar el comando `docker-compose exec web python manage.py makemigrations`
- Para ejecutar las migraciones, ejecutar el comando `docker-compose exec web python manage.py migrate`
- Para instalar un paquete de python, ejecutar el comando `docker-compose exec web pip install <nombre del paquete>`
- Correr solo el servidor de django, ejecutar el comando `docker-compose exec web python manage.py runserver`
## Uso
- Para acceder a la aplicación web, ir a la dirección `http://localhost:8000`
- Para acceder a la base de datos, ir a la dirección `http://localhost:5432`
- Para acceder a redis, ir a la dirección `http://localhost:6379`
