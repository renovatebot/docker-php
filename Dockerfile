# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.23

FROM renovate/buildpack:5-php@sha256:7a9ac009fea01966a0b20fbe99215cb82388db7d65ea0e7076bee743bd2a319b

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
