# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.23

FROM renovate/buildpack:5-php@sha256:8207e7f5cd9da568d6d43040ed3aa8d9a75968e90a9b17d62118b0668d1d471a

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
