#!/bin/bash
echo "Docker Kurulumlar"

# User Variable
INFORMATION="Bilgi"
CREATE="Oluşturma"
DELETE="Silme"
UPDATE="Güncelleme"
CLEANER="Temizleme"
INSTALL="Yükleme"
START="Başlıyor"
STOP="Durduruluyor"

#####################################################################################################
#####################################################################################################
# Bashscriptlere İzin Vermemiz
chmod +x docker_setup.sh
chmod +x countdown.sh
chmod +x reboot.sh

#####################################################################################################
#####################################################################################################
# GENEL FUNCTION

# Port aktifleştir
theFirewallInstall(){

}
theFirewallInstall


# Bilgi
information(){

}


# Temizleme
clean(){

}


#####################################################################################################
#####################################################################################################
# Dockerfile & Docker Compose

# Dockerfile
dockerFile() {
    sleep 2
    echo -e "\nDockerfile ${START}"
    read -p "Dockerfile image başlanmasını istiyor [e/h]: " dockerFileResult
    if [[ $dockerFileResult == "e" || $dockerFileResult == "E"  ]]; then
        echo -e "\nDockerfile'a image ${CREATE}..."

        # Geriye Say
        ./countdown.sh

        # Dockerfile build
        docker image build -t nginx_image .
}
dockerFile

# docker-compose.yml
dockerComposeYml() {

}
dockerComposeYml

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
