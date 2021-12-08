# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.26

FROM renovate/buildpack:5@sha256:42e08482fc0d86ad33a08ef9faddcf1cc28f16e25b0e6add1776968274369e1b

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
