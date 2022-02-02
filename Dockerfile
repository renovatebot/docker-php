# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM renovate/buildpack:6@sha256:a4fa3dab0e86d5c55be7f0bfb76cce3148d742b3eeb8cddc9239cf8f2bf361cb

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
