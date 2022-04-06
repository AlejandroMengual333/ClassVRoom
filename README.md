# Proyecto ClassVRoom

## Descripción de Proyecto
El proyecto trata de Dockerizar la pagina de los compañeros de DAW que gestiona cursos para que profesores puedan colgar material para sus alumnos y los alumnos puedan subir ejercicios y ver el feedback de su profesor.

## Requisitos
El primer requisito que se necesita para poder utilizar este proyecto es tener instalado Python.

  Linux: <br/>
  
    - $ sudo apt-get update
    - $ sudo apt-get install python3.6
    El numero del python determina la version de este que vas a instalar.
  
  Windows:<br/>
  
    - Nos vamos a la página oficial de Python: https://www.python.org/downloads/
    - Descargar el archivo .exe de Python
    - Ejecutar el archivo .exe de Python y seguir las instrucciones
    
    
   
   
   
   
   
  El segundo requisito será instalar git y docker-compose para poder clonar el proyecto y trabajar con el mediante dockers..<br/>
 
    - $ sudo apt install git
    - $ sudo apt install docker-compose
    
    
## Instalación y uso del proyecto
Para la instalación y uso del proyecto, una vez cumplidos los requisitos, nos descargarmos el proyecto, no instalamos dependencias ya que de eso se encarga el Docker-compose.<br/>

```  - $ git clone https://github.com/AlejandroMengual333/ClassVRoom```<br/> 

Acto seguido le daremos permisos para no tener problemas a la carpeta <br/>

``` - $ sudo chmod -R 777 ClassVRoom/ ``` <br/>

Entramos a la carpeta "ClassVRoom" y creamos un fichero "db.sqlite3" <br/>
```- $ sudo touch db.sqlite3 ``` y ```- $ sudo chmod 777 db.sqlite3 ``` <br/>

Levantaremos el docker.<br/>
```- $ docker-compose up -d --build```<br/>

Realizaremos "docker ps -a" para identificar el ID del container para acceder a el.<br/>
```-$ docker ps -a```<br/>

Una vez localizado el ID del container accederemos a el.<br/>
```-$ docker exec -ti IDContainer /bin/bash```<br/>

Ya dentro del container haremos la migración.<br/>
```-$ ./manage.py migrate```<br/>

Y seguidamente crearemos los grupos con el script facilitado por los compañeros de DAW.<br/>
```-$ ./manage.py creategroups```<br/>

Tambien podemos crear un usuario para entrar al apartado de admin<br/>
```-$ ./manage.py createsuperuser```<br/>

Apartir de aqui ya podemos entrar a nuestro front end de classVRoom mediante NUESTRA_IP:8000 o al back end mediante NUESTRA_IP:8000/admin e ingresamos la cuenta que creamos como superuser.

## Equipo
El equipo ha sido compuesto por 6 alumnos, 3 de DAW y 3 de CIBER del instituto Esteve Terradas i Illa.

## DAW

* Carlos Fernández
  * [Github](https://github.com/bycarlos28) 
  * [Discord: bycarlos28#9418]

* Adrián Gomez
  * [Github](https://github.com/AdrianOrea) 
  * [Github: Adgoor#0880]

* Carlos Valenzuela
  * [Github](https://github.com/carlosvalgar) 
  * [Discord: Carvagia#1404]
 
## CIBER

* Alejandro Mengual
  * [Github](https://github.com/AlejandroMengual333) 
  * [Discord: AEME#2170]
 
* Jose Paredes
  * [Github](https://github.com/JoseParedes1) 
  * [Discord: JoseParedes25#7365]
  
* Isaac Cerezo
  * [Github](https://github.com/isaaccerezo) 
  * [Discord: Isaaccb10#4373]
