FROM    debian:buster

LABEL   maintainer="djeeee1272@gmail.com"

RUN     apt-get update && apt-get upgrade && apt-get install -y nginx \
            vim \
            wget \
            openssl \
            mariadb-server \
            php-mysql \
            php-mbstring \
            php7.3-fpm \

COPY    ./srcs/run.sh ./
COPY    ./srcs/default ./temp
COPY    ./srcs/wp-config.php ./temp
COPY    ./srcs/config.inc.php ./temp

EXPOSE  80 443

CMD     bash run.sh