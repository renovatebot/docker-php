# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.22

FROM renovate/buildpack:5-php@sha256:57748a1bcf780217f5938458184604f5a4ad33b92b5a24f69466ddce75c4429f

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
