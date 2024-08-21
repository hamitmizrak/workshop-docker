######################################################################
# Image Create
# docker image build -t customize_nginx .

# Container Create
# docker container run -d -p 1111:80 --rm --name  customize_nginx

# Daocker Registery Create
# Step-1: Dockerfile ile image oluştur => docker image build -t customize_nginx .
# Step-2: DockerHub git public veya private repository oluştur.
# Step-3: docker ps
# Step-4: image Name: customize_nginx
# Step-5: docker image tag imageName javahamitmizrak/oluşturulmuşRepositoryAdi
# Step-5: docker image tag customize_nginx javahamitmizrak/oluşturulmuşRepositoryAdi
# Step-6: docker push javahamitmizrak/oluşturulmuşRepositoryAdi

# ÖNEMLİ NOT: eğer windows üzerinden çalıştırıyorsanız sudo tanımayacaktır.
# ÖNEMLİ NOT: nginx eğer browserda istediğiniz sonuç çıkmazsa browserin cache belleğini temizleyiniz. yoksa nginx'in kendi sayfasını görürüsünüz.

######################################################################
# Multi-Stage Build
# @@@@@@@@@@@

# Nginx Image
#1 .YOL
FROM nginx:latest
#2.YOL  nginx:alpine anlamı Alpine işletim sistemi içinde nginx çalıştır
#FROM nginx:alpine

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Maintainer
LABEL maintainer="hamitmizrak@gmail.com"

# Ortam Değişkenleri
ENV AUTHOR="Hamit Mızrak"
ENV APP_NAME="Docker Workshop"
ENV TECH="Docker"
ENV VERSION="v1.0.0"
ENV YEAR="v1.0.0"
ENV NGINX_HOST=localhost
ENV NGINX_PORT=80

# Ortam Değişkeni Çalıştırması
RUN echo "Yazar: $AUTHOR"
RUN echo "Uygulama Adı: $APP_NAME Yılı: $YEAR"
RUN echo "Teknolojiler: $TECH"
RUN echo "Version: $VERSION"
RUN echo "Version: $VERSION"
RUN echo "URL: http//$NGINX_HOST:$NGINX_PORT"

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Dizin Oluştur
# WORKDIR /var/www/html
# RUN mkdir -p html


# Log Veri Sakla
VOLUME ["/var/log/nginx"]

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# COPY Local File => Nginx System File
# step-1 nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# step-2 default.conf
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# step-3 html
COPY html/   /usr/share/nginx/html

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Nginx'in default portu 80
EXPOSE 80

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# HEALTHCHECK         ==> Bu image dosyasının sağlık durumu (Container Çalışıyor mu)
# --interval=30s      ==> 30 saniyede bir sağlık kontrolü yapılsın
# --timeout=10s       ==>  10 saniyede Sağlık kontrolünü tamamlasın
# --start-periyod=5s  ==> Konteynar başladığında sağlık kontrolünün başlamasın için 5 saniye bekle
# --retries=3         ==>  Sağlık kontrolünü eğer ilk denemede başarısız olursa 3 defa daha  çalışsın.
# Eğer bu 3s komutu belirtilenin dışına çıkarsa Docker sağlıksız olarak işaretlenir
# CMD wget --quiet --tries=1 --spider http://localhost : wget ile localhost istek atmak
HEALTHCHECK --interval=30s --timeout=10s \
    --start-period=5s --retries=3 \
    CMD curl -f http://${NGINX_HOST}:${NGINX_PORT}/ || exit 1
#CMD wget --quiet --tries=1  --spider http://localhost:4444 || exit 1

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Güvenlik kısımlarında kullanıcı değiştirmek istersek ve root'u kullanmamak için
RUN useradd -r -s /bin/false nginxuser

# CMD ["nginx", "-g","daemon off;"]
# CMD: Konteyner başlatıldığında varsayılan olarak çalışacak komutu söyler.
# Nginx başlatan komutlar
# nginx: Wnginx web sunucu çalıştıran komut
# -g : Nu nginx'te global(genel) bir yapılandırma direktifidir.
# daemon off: Nginx varsayılan olarak daemon(arka plan işlemi) olarak çalışır yani başlatıldığında kendi kendine arka plana gönderir ve kontrol terminalinden çıkar.
#ve Nginx'in arka planda çalışamsını engeller ve ana process olarak çalışmasını sağlar.

# Docker konteynar başlatıldığında çalışacak ve varsayılan komutunu belirtir.
# Bu komutla beraber Nginx web sunucusunuu başlatılmasını sağlar ve -g "daemon off" komutları daemon kontrolünden Nginx'in arka planda çalışmasını engeller.
# Çünkü docker container için önemlidir. Docker konteynarın çalışır durumda olduğunu anlamak için ana processn çalışmasını devam edip etmediğini kontrol eder.
CMD ["nginx", "-g","daemon off;"]

##########################################################################
# docker build -t imageName .  => (Defaultta: Dockerfile yazılmışsa)
# docker build -f CustomiseDockerFile -t imageName . => (Dockerfile yerine CustomiseDockerFile yazılmışsa)

# docker ps
# docker ps -a
# docker container ls
# docker container ls -a
# docker image ls
# docker container run -d -p 1111:80 --rm --name nginx_container customize_nginx
# docker container prune
# docker container exec -it containerID bash
# docker container exec -it containerNAME bash
