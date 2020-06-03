# renovate: datasource=docker depName=php versioning=docker
ARG PHP_VERSION=7.4

FROM renovate/buildpack:2-php@sha256:82616cd0197b82c03de10bdae80396a5d4715d84a63117cb25c73786cd0665aa

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
