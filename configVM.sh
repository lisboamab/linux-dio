#!/bin/bash

#Cria os diretorios e os grupos
mkdir /publico /adm /ven /sec
groupadd GRP_ADM GRP_VEN GRP_SEC

#Modifica o grupo dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Modifica permissões
chmod 770 /adm /ven /sec
chmod 777 /publico

#Adiciona os usuarios

#ADM
useradd carlos -c "Carlos Batista" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd joao -c "João Menezes" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd maria -c "Maria das Graças" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e

#Vendas
useradd debora -c "Debora Nobre" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd sebastiana -c "Sebastiana França" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd roberto -c "Roberto Silva" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e

#SEC
useradd josefina -c "Josefina Junyper" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd amanda -c "Amanda Amelia" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd rogerio -c "Rogerio Ramedo" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e

