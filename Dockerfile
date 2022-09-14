# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.30

FROM renovate/buildpack:6@sha256:999b1f547a36a8638e0e6646a1d06537b8a5c0a5575dcdc8adc54104b7ba1ea3

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
