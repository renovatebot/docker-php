# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.21

FROM renovate/buildpack:5-php@sha256:00e129ffaddafe6952686b2823a8378ff24df5dca4ecd7678792b7e6ef451c11

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
