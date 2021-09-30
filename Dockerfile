# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM renovate/buildpack:5-php@sha256:1636e645a55a5fa257036e12ebc852734cf3d75feb69d3bb9cfd1331f1cde470

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
