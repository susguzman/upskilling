## HTML page usando ubuntu como base

## BUILD ##
# docker build -t cero -f 1.dockerfile .
## RUN ##
# docker run -d -p 8880:80 cero
## TEST ##
# curl localhost:8880

# Indica la imagen base a utilizar
FROM ubuntu:20.04

# Utilizado para agregar metadata a la imagen a contruir
LABEL owner="jesus"
LABEL emial="susguzman@gmail.com"

# Variables de entorno para nuestro contendor
ENV HOLA=mundo \
    MSG=jesus

# Ejcutar cualquier comando de linux. En este caso instalar nginx
RUN apt update && \
    apt install -y nginx 

# Copiando un directorio de nuestro server hacia la imagen
COPY html/ /var/www/html

# Indica el usuario a utilizar de aqui en adelante. 
# El usuario tiene que haber sido creado previamente (https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/)
# USER telus

# Utilizar este folder como directorio actual
WORKDIR /var/www/html

# Documentar (decir) que nuestro contenedor necesita el puerto 80 para funcionar
EXPOSE 80

# Proceso principal de nuestro contenedor
CMD ["nginx", "-g", "daemon off;"]
