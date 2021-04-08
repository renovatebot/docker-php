# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.16

FROM renovate/buildpack:5-php@sha256:f98b1b3822b1124e520394a4253192a2ab7cb143696886eadeed4b250a57ce6e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
