# Ubuntu based Nginx static web server
# Version: 0.0.3

FROM ubuntu:16.04
MAINTAINER Gianluca Ciocci (me@gianlucaciocci.com)
ENV REFRESCED_AT 2016-09-06
RUN apt-get -qq upgrade
RUN apt-get install -y ngnix
RUN echo 'Hi, I ma in your container' > /var/www/html/index.html
EXPOSE 80

