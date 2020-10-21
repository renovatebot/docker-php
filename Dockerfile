# renovate: datasource=docker depName=php versioning=docker
ARG PHP_VERSION=7.4

FROM renovate/buildpack:2-php@sha256:c07b7ae6b88de3a84807b12428378af1e4ade440e3a9be309d7a27d12e03e668

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
