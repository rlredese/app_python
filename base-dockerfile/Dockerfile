FROM debian:11.7

RUN mkdir -p /opt/app

COPY requeriments.txt /opt/app/

WORKDIR /opt/app

RUN apt-get update && apt-get -y upgrade

RUN apt-get install --upgrade -y python3.6 python3-pip

ENV APP_ENV development
