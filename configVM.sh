#!/bin/bash

#Cria os diretorios e os grupos
mkdir /publico /adm /ven /sec
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
#Modifica o grupo dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Modifica permissões
chmod 770 /adm /ven /sec
chmod 777 /publico

#Adiciona os usuarios

#ADM
useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e

#Vendas
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e

#SEC
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e

