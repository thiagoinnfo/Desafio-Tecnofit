FROM php:7.4-apache
RUN docker-php-ext-install mysqli \
    && docker-php-ext-install pdo \
    && docker-php-ext-install pdo_mysql 

EXPOSE 8080