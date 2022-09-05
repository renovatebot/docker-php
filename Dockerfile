# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.30

FROM renovate/buildpack:6@sha256:284322089f964f89d3f6b448ff2fc7158767f24e7f0b4efe1fd6d1c6749b5fd8

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
