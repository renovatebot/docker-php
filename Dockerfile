# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.19

FROM renovate/buildpack:5-php@sha256:be47088f97fd12f4814d4a4142683cd9a5e6dc80aafb994a65914446f72a4437

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
