#!/bin/bash
# Set permissions to storage and bootstrap cache
sudo chmod -R 0777 /var/www/html/laravel/storage
sudo chmod -R 0777 /var/www/html/laravel/bootstrap/cache
#
cd /var/www/html/laravel
#
# Run composer
sudo composer install

# Copy the env file
sudo cp /var/www/.env .

php artisan migrate

php artisan config:cache
