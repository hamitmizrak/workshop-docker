#!/bin/bash
echo "Docker Kurulumlar"

# User Variable
INFORMATION="Bilgi"
CREATE="Oluşturma"
DELETE="Silme"
UPDATE="Güncelleme"
CLEANER="Temizleme"
INSTALL="Yükleme"

#####################################################################################################
#####################################################################################################
# Bashscriptlere İzin Vermemiz
chmod +x docker_setup.sh
chmod +x countdown.sh
chmod +x reboot.sh

































# Docker Info
docker --version
docker version
docker -v
docker info

#--------------------------------
docker run hello-world
docker container run hello-world

#--------------------------------
docker search nginx
docker pull nginx
docker pull nginx
docker pull mysql
docker pull httpd
docker pull alpine
docker pull ubuntu
docker pull centos