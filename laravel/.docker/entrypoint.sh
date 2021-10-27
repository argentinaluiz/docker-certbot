#!/bin/bash

if [ ! -f ".env" ]; then
  cp .env.example .env
fi

composer install
php artisan key:generate

php-fpm