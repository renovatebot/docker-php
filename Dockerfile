# renovate: datasource=docker depName=php versioning=docker
ARG PHP_VERSION=7.4

FROM renovate/buildpack:2-php@sha256:d42664273eba313d3fa03110e0785655029fa7896a2d189fdcb1c43069b0aa05

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
