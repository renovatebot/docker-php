# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.32

FROM renovate/buildpack:6@sha256:11a5e2e0ec2d52d4ccb7ca0e68489fe70089e7e3e221e392d0c69c8e04b45d38

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
