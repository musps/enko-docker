FROM php:7.2.2-fpm

RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip

RUN apt-get install -y zip unzip

# --- Php extensions.
RUN docker-php-ext-install pdo pdo_mysql sockets

# --- Composer.
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"