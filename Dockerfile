# renovate: datasource=docker depName=php versioning=docker
ARG PHP_VERSION=7.4

FROM renovate/buildpack:4-php@sha256:fb408db773dfbbfbfd33d2677aee44c664eca212b6922d39ed875845515b7798

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
