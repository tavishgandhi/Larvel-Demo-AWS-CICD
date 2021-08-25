#!/bin/bash
# Set permissions to storage and bootstrap cache
sudo chmod -R 0777 /var/www/html/storage
sudo chmod -R 0777 /var/www/html/bootstrap/cache
#
cd /var/www/html
#
# Run composer
sudo composer install

# Copy the env file
cp /var/www/.env .

php artisan migrate

php artisan config:cache
