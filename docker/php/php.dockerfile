FROM php:5-apache

RUN apt-get update && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) mysqli

RUN { \
    echo '<FilesMatch \.php$>'; \
    echo '\tSetHandler application/x-httpd-php'; \
    echo '</FilesMatch>'; \
    echo; \
    echo 'DirectoryIndex disabled'; \
    echo 'DirectoryIndex index.php index.html'; \
    echo; \
    echo '<Directory /var/www/>'; \
    echo '\tAllowOverride All'; \
    echo '</Directory>'; \
    } | tee "$APACHE_CONFDIR/conf-available/docker-php.conf"

COPY php-mysql.ini /usr/local/etc/php/conf.d/php-mysql.ini