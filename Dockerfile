# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.20

FROM renovate/buildpack:5-php@sha256:2799de509feb147505cedc72008b7890c5fcc712c835793ddc52028cea69a73b

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
