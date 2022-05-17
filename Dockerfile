# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM renovate/buildpack:6@sha256:e3ffa7a80894a49964f17284b8bd6d92e3eebd5c51ad490b5c7368b7c961b328

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
