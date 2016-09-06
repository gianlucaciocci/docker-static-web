# Ubuntu based Nginx static web server
# Version: 0.0.6

FROM ubuntu:16.04
MAINTAINER Gianluca Ciocci (me@gianlucaciocci.com)

ENV REFRESCED_AT 2016-09-06

RUN apt-get -qq upgrade
    && apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
	&& echo "deb http://nginx.org/packages/mainline/ubuntu/ xenial nginx" >> /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y \
						ca-certificates \
						nginx-module-xslt \
						nginx-module-geoip \
						nginx-module-image-filter \
						nginx-module-perl \
						nginx-module-njs \
						gettext-base \
	&& rm -rf /var/lib/apt/lists/*




RUN echo 'Hi, I am in your container' > /var/www/html/index.html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

