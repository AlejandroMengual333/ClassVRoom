# We Use an official Python runtime as a parent image
FROM python:3.8-slim
 
# install db libs
RUN apt-get update
RUN apt-get install -y default-mysql-client libmariadb-dev
RUN apt-get install -y libmariadb-dev-compat gcc gdal-bin libjpeg-dev
RUN apt-get install -y gcc python3-dev python3-mysqldb
RUN apt-get install -y libpq-dev python-dev python3-venv
# install app libs
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt 
# Mounts the application code to the image
COPY . code
 
# establish workdir
WORKDIR /code
 
EXPOSE 8000 
 
# runs the development server
ENTRYPOINT ["python3", "manage.py"]
CMD ["creategroups.py"]
CMD ["runserver","0.0.0.0:8000"]
