FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
      libfreetype6-dev \
      libjpeg62-turbo-dev \
      libpng-dev \
      libzip-dev \
      zip \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip pdo pdo_mysql \
  && docker-php-ext-install -j$(nproc) iconv \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j$(nproc) gd

RUN curl https://getcomposer.org/composer-stable.phar --output composer.phar
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get update
RUN apt-get install -y npm vim

RUN useradd -m foo
RUN adduser foo sudo

USER foo

RUN mkdir /home/foo/app

WORKDIR /home/foo/app
