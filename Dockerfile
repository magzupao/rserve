FROM ubuntu:20.04

MAINTAINER linuxhint

RUN apt-get update \

    && apt-get install -y nginx \

    && apt-get clean \

    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

    && echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 8080

CMD service nginx start
