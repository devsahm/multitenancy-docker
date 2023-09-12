FROM php:8.1-fpm-alpine

#PHP Extention
RUN docker-php-ext-install pdo pdo_mysql sockets

#Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
     --install-dir=/usr/local/bin --filename=composer

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Copy the application code to the container
COPY . .

# Copy the .env.example file to .env
COPY .env.example .env


# Install project dependencies
RUN composer install
