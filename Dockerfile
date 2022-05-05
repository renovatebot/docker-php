# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM renovate/buildpack:6@sha256:77fc989698e57b2ea70b8997eedd7526e7789a8be03606b27b5f26e06e3badae

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
