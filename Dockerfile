# Nginx Image
FROM nginx:latest


# COPY Local File => Nginx System File
# step-1 nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf
# step-2 default.conf
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
# step-3 html
COPY html/   /usr/share/nginx/html

# Nginx'in default portu 80
EXPOSE 80 

# Nginx başlatan komutlar
CMD ["nginx", "-g","daemon off;"]
