from dwchiang/nginx-php-fpm:7.3.30-fpm-alpine3.13-nginx-1.20.1
COPY src/ /var/www/html/public
copy src/assets /usr/share/nginx/html/assets
# COPY nginx-default.conf /etc/nginx/conf.d/nginx-default.conf
