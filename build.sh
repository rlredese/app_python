#!/bin/bash
#Build com base em duas imagens
#Imagem1 Sistema base debian 10 com python3.6
#Imagem2 código python atualizado
# "full" para build completo e code para atualizar somente o código
IMAGE_NAME="app-python"
VERSION=1.0
IMAGE_BASE="debian-base:1.0"
if [ $1 = "full" ] ; then
    echo "Iniciando o build da imagem base..."
    docker build . -f base-dockerfile/Dockerfile -t debian-base:1.0 
    docker build . -t $IMAGE_NAME:$VERSION
fi
if [ $1 = "code" ];then
    docker build . -t $IMAGE_NAME:$VERSION
fi