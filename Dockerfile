FROM centos

MAINTAINER andres

ADD Ejercicio1.sh /Ejercicio1.sh

RUN chmod 700 /Ejercicio1.sh

EXPOSE 80

CMD ["/Ejercicio1.sh"]
