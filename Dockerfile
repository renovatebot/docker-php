# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM renovate/buildpack:6@sha256:253e1561e704274687602f20f5e7835f8440f32d38f6520ab7b59e50ae676c48

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
