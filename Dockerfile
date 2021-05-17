# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.19

FROM renovate/buildpack:5-php@sha256:a0d6778bce82a9469348d0c39ea35f48f9daa63089b9d99c46c37bdf9ea6c99a

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
