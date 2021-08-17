# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.22

FROM renovate/buildpack:5-php@sha256:5f659ba90233e257f82372d392ff6fc5a95dbc409e22964968fdf15bc430365c

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
