FROM php:8.2-apache

# installer extensions PHP
RUN docker-php-ext-install pdo pdo_mysql mysqli

# activation rewrite
RUN a2enmod rewrite

# copier config apache
COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf

# copier projet php
COPY src/ /var/www/html/
