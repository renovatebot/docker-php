# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM renovate/buildpack:6@sha256:87830ff48019962135718f1998f1a76f4eef4cbdeeb7311e9861de93f405795c

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
