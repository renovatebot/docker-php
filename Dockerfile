# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM renovate/buildpack:5-php@sha256:0248676aac38e021b124fbc09475eaee759aca6e72eb6a31d90a921cdeea55f7

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
