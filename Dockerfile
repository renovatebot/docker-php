# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.32

FROM renovate/buildpack:6@sha256:588d41e7c055fe63edb6bf43ec4bba579308ebb23b19c18b5a7b24a705a412d3

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
