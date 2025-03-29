FROM serversideup/php:8.4-fpm-nginx-alpine-v3.5.2 AS base

USER root

#################################################################################
# CI: for pipeline
#################################################################################
FROM base AS ci

RUN install-php-extensions xdebug
COPY .docker/application/php/xdebug-ci.ini /usr/local/etc/php/conf.d/
ENV PHP_OPCACHE_ENABLE="1"

USER www-data

#################################################################################
# DEV: for development — local
#################################################################################
FROM base AS dev

RUN install-php-extensions xdebug
COPY .docker/application/php/xdebug-dev.ini /usr/local/etc/php/conf.d/
ENV PHP_OPCACHE_ENABLE="0"

USER www-data

#################################################################################
# DEPLOY: for actual deployment — any environment
#################################################################################
FROM base AS deploy

ENV AUTORUN_ENABLED="true" \
    PHP_OPCACHE_ENABLE="1"

COPY --chown=www-data:www-data . /var/www/html

STOPSIGNAL SIGTERM
COPY --chmod=755 ./.docker/application/entrypoint.d/ /etc/entrypoint.d/

# don't forget to switch back to user wwww-data if you install anything.
USER www-data
