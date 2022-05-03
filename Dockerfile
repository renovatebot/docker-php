# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM renovate/buildpack:6@sha256:353a7ca6806ae6aaf4efc2f15e80b07218261eb5198dcaf0816e1c56ac5b3045

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
