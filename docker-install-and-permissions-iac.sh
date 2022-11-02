#!/bin/bash

#instala o docker
curl -fsSl https://get.docker.com -o /tmp-docker/get-docker.sh --create-dirs
sh /tmp-docker/get-docker.sh

#cria um grupo para usuarios do docker
groupadd docker_users

#muda o grupo dos diretorios que o docker usa
chown root:docker_users /var/lib/docker/ -R
chown root:docker_users /var/run/docker* -R

#muda as permissões dos diretorios do docker
chmod 775 /var/lib/docker/ -R
chmod 775 /var/run/docker* -R

#executa o docker hello world para testar o funcionamento
docker run hello-world

