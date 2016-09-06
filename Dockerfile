# Ubuntu based Nginx static web server
# Version: 0.0.5

FROM ubuntu:16.04
MAINTAINER Gianluca Ciocci (me@gianlucaciocci.com)
ENV REFRESCED_AT 2016-09-06
RUN apt-get update && apt-get -qq upgrade && apt-get install -y nginx
RUN echo 'Hi, I ma in your container' > /var/www/html/index.html
EXPOSE 80

