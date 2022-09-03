# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.30

FROM renovate/buildpack:6@sha256:ae02fc267362653858eb05e717e13778baa8b63e96123ec4d7a59abd77bbee49

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
