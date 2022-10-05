# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.32

FROM renovate/buildpack:6@sha256:0beb042a8f0c8184d765ca0f2190ccc3e502773dc972584c7923c019111ae63e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
