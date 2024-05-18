
FROM php:7.4-apache

# Install PHP extensions
RUN docker-php-ext-install mysqli pdo_mysql

# Copy website files into container
COPY . var/www/html/

RUN echo "serverName localhost" >> /etc/apache2/apache2/conf
# Expose port
EXPOSE 8082
