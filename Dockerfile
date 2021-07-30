# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.22

FROM renovate/buildpack:5-php@sha256:4b9dc75517803e755d53814dd5d22ce6ffa9df3d9b44acf039060ed5fcd17338

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
