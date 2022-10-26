#!/bin/bash
mkdir /publico /adm /ven /sec
groupadd GRP_ADM GRP_VEN GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm /ven /sec
chmod 777 /publico


