#!/bin/bash

#Atualiza o servidor
echo "Atualizando o servidor..."
apt update -y
apt upgrade -y

#Instala o apache2
echo "Instalando o Apache..."
apt install apache2 -y
#Remove o index.html nativo do apache
rm -f /var/www/html/index.html

#Instala o unzip
echo "Instalando o unzip ..."
apt install unzip -y

#Cria o /tmp
echo "Criando o diretorio /tmp ..."
mkdir /tmp

#Baixa a aplicação
echo "Baixando a aplicação linux-site-dio no /tmp ..."

#wget é uma aplicação de download e o parametro -P serve para difinir o caminho do download
wget -P /tmp -O linux-site-dio.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Deszipando os arquivos
unzip linux-site-dio.zip

#Copiando os arquivos para a pasta do apache
echo "Subindo os arquivos para o servidor..."
cp -r /tmp/linux-site-dio-main/* /var/www/html/
