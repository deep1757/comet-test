FROM ubuntu:18.04
MAINTAINER Deepak Sharma
RUN apt-get update -y && apt-get upgrade -y && apt-get -y install apache2
COPY index.html /var/www/html/
EXPOSE 80
#CMD ["apache2", “-D”, “FOREGROUND”]
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]

