# FROM php:7.3.29-apache-buster
# RUN apt-get update
# RUN apt-get -y install software-properties-common
# RUN apt-add-repository ppa:ondrej/php
# RUN apt-get update
# RUN apt-get -y install php7.3-mysqli
# RUN apt-get -y install php7.3-gd

# RUN service apache2 status


FROM php:7.4.33-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

RUN apt-get install php7-gd
RUN apt-get install php7-ldap



# FROM ubuntu:latest
# ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update
# RUN apt-get -y install software-properties-common
# RUN apt-add-repository ppa:ondrej/php
# RUN apt-get update
# RUN apt install -y apache2
# RUN apt install -y php7.4
# RUN apt-get install -y libapache2-mod-php7.4 php7.4-curl php7.4-json



# ENV DEBIAN_FRONTEND noninteractive
# ENV TZ=Asia/Kolkata
# RUN apt-get install tzdata

# RUN apt install -y mysql-server
# RUN apt install -y php7.2
# RUN apt install -y php7.2-cli
# RUN apt install -y php7.2-fpm
# RUN apt install -y php7.2-mysql php7.2-dom php7.2-curl  php7.2-gd php7.2-json  php7.2-mbstring
# RUN apt install -y php7.2-mysqli php7.2-pdo
# RUN apt install phpmyadmin -y
# RUN chown -R $USER:$USER /var/www/html

# FROM php:7.3.29-apache-buster
# RUN docker-php-ext-install mysqli
# RUN apt-get install -y php7-mysqli
# RUN apt-get install php7-gd
# RUN service apache2 status