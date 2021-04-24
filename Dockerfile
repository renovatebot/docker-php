# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.16

FROM renovate/buildpack:5-php@sha256:5d908bd28eb98108707241ebbf034c1e8bbcc1820a45244f1bdfaf65b75e4d9d

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
