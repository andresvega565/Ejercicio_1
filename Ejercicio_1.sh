#/bin/bash

docker network create Ejercicio5_1

docker create --name datacontainer_ejercicio5 -v /data:/var/www/html -v /data:/usr/share/nginx/html busybox

docker run -itd -p 8011:80  --network Ejercicio5_1 --volumes-from datacontainer_ejercicio5 --name nginx  nginx

docker run -itd -p 8030:80 --network Ejercicio5_1 --volumes-from datacontainer_ejercicio5 --name apache  andresvega565/centos-httpd-php

