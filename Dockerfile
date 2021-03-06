# Ubuntu based Nginx static web server
# Version: 0.0.7

FROM ubuntu:16.04
MAINTAINER Gianluca Ciocci (me@gianlucaciocci.com)

ENV REFRESCED_AT 2016-09-16

RUN apt-get update
RUN apt-get -qq upgrade
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' > /var/www/html/index.html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

