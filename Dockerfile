FROM php:8.1-apache
	RUN docker-php-ext-install mysqli

FROM wordpress

# Set environment variables used by the Wordpress image
# DB_USER and DB_PASSWORD are included as an example. However,
# these should be removed and set during docker run.
ENV WORDPRESS_DB_HOST=127.0.0.1 \
    WORDPRESS_DB_USER=root \
    WORDPRESS_DB_PASSWORD=root \
    WORDPRESS_DB_NAME=maps_for_wc \
    WORDPRESS_TABLE_PREFIX=wp_

