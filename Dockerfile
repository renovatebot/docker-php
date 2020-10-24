# renovate: datasource=docker depName=php versioning=docker
ARG PHP_VERSION=7.4

FROM renovate/buildpack:2-php@sha256:9e7b1f67a16fa6ac31649b0610e8d28385cae197f72b454867f5251e3714a662

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
