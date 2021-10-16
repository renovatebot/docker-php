# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM renovate/buildpack:5-php@sha256:c8017fbd653e335bf0118b00b1b4d06e158d147643d49aa7a96f1228ca66a3fd

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
