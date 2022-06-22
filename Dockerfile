# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.30

FROM renovate/buildpack:6@sha256:da3f4cc112f0c1c2b378cca8982697445b8aaa29154a5334f8140e5302340ceb

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
