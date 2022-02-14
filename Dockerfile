# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM renovate/buildpack:6@sha256:2d489ae8bd528d6ac0a0ae3a0bdf04d2a846453e9034adc4dbe953290e1cd7de

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
