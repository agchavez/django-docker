FROM python:3.10.12

ENV DockerHOME=/home/app/taskApp

RUN mkdir -p $DockerHOME

WORKDIR $DockerHOME

# Dependencias 
COPY requirements.txt $DockerHOME

RUN pip install -r requirements.txt

# Copiar el proyecto

COPY . $DockerHOME

# Puerto
EXPOSE 8000

# Levantar el servidor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



