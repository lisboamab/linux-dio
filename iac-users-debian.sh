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
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e

#SEC
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e


echo "Fim..."
