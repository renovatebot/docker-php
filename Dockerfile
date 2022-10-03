# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.32

FROM renovate/buildpack:6@sha256:7921940ef040d655e91eca217fdeff29a2d070d91cf2c2cea015c69364d71414

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
