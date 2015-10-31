FROM alpine:3.2
MAINTAINER Pablo Gallego Falcon "pablo@gallegofalcon.com"

RUN /sbin/apk update \
&& /sbin/apk add \
php-common \
php-mcrypt \
php-soap \
php-xmlreader \
php-curl \
php-intl \
php-zlib \
php-enchant \
php-zip \
php-dom \
php-mysqli \
php-pear \
php-pdo_mysql \
php-json \
php-pdo \
php-gd \
php-openssl \
php-iconv \
php-xml \
php-xsl \
php-fpm \
php-ctype &&\
rm -rf /var/cache/apk/* &&\
ln -sf /dev/stderr /var/log/php-fpm.log

CMD ["php-fpm", "-F"]
