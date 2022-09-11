# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.30

FROM renovate/buildpack:6@sha256:c1e1eb6659fc36d40f980038e27bb4368ddbbf6536e2a6c941750a7713789fde

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
