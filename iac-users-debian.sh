#!/bin/bash

#Cria os diretorios e os grupos
echo "Criando diretorios e grupos..."
mkdir /publico /adm /ven /sec
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Especificando permissões dos diretorios..."
#Modifica o grupo dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Modifica permissões
chmod 770 /adm /ven /sec
chmod 777 /publico

#Adiciona os usuarios

echo "Criando Usuarios"

#ADM
useradd -m -G GRP_ADM -p $(openssl passwd -crypt Senha123) -s /bin/bash carlos
useradd -m -G GRP_ADM -p $(openssl passwd -crypt Senha123) -s /bin/bash joao
useradd -m -G GRP_ADM -p $(openssl passwd -crypt Senha123) -s /bin/bash maria

#Vendas
useradd -m -G GRP_VEN -p $(openssl passwd -crypt Senha123) -s /bin/bash debora
useradd -m -G GRP_VEN -p $(openssl passwd -crypt Senha123) -s /bin/bash sebastiana
useradd -m -G GRP_VEN -p $(openssl passwd -crypt Senha123) -s /bin/bash roberto

#SEC
useradd -m -G GRP_SEC -p $(openssl passwd -crypt Senha123) -s /bin/bash josefina
useradd -m -G GRP_SEC -p $(openssl passwd -crypt Senha123) -s /bin/bash amanda
useradd -m -G GRP_SEC -p $(openssl passwd -crypt Senha123) -s /bin/bash rogerio

echo "Fim..."
