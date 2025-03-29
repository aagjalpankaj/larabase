#!/bin/sh

echo "⏰ Scheduling tasks!"
php /var/www/html/artisan schedule:work &
