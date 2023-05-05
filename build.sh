#!/bin/bash
#Build com base em duas imagens
#Imagem1 Sistema base debian 10 com python3.6
#Imagem2 código python atualizado
# "full" para build completo e code para atualizar somente o código

if [ $1 = "full" ] ; then
    docker build -f Dockerfile.base -t debian-base:1.0
    docker build . -t app_python:1.0
fi
if [ $1 = "code" ];then
    docker build . -t app_python:1.0
fi