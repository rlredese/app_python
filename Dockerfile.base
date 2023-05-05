FROM debian:11.7

RUN mkdir -p /opt/app

COPY requeriments.txt /opt/app/

WORKDIR /opt/app

RUN apt-get update && apt-get -y upgrade

RUN apt-get install upgrade python

ENV APP_ENV development
