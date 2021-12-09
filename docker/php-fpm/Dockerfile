FROM php:8.1-fpm-alpine

RUN apk add --no-cache bash

# Install, configure some php packages
RUN apk --no-cache add --virtual .build-dependencies \
        autoconf \
        g++ \
        make \
        libzip-dev \
        zip \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        icu-dev \
        mysql-client \
    && docker-php-ext-install \
        bcmath \
        sockets \
    && docker-php-ext-configure gd -with-freetype --with-jpeg \
    && docker-php-ext-configure intl \
    && docker-php-ext-install zip \
    && docker-php-ext-install intl \
    && docker-php-ext-install gd \
    && docker-php-ext-install exif

VOLUME /opt/project
WORKDIR /opt/project
