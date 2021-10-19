## HTML page usando nginx como base

## BUILD ##
# docker build -t uno -f 1.dockerfile .
## RUN ##
# docker run -d -p 8881:80 uno
## TEST ##
# curl localhost:8881

FROM nginx:1.21.3

LABEL owner="jesus"
LABEL emial="susguzman@gmail.com"

ENV HOLA=mundo \
    MSG=jesus

COPY html/ /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

EXPOSE 80
