# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM renovate/buildpack:5-php@sha256:a8ae4af2f04b2cf2fe515104e9a5a62fcbc14a6e191b82e4b2eaea72cde851da

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
