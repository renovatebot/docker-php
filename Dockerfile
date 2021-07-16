# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.21

FROM renovate/buildpack:5-php@sha256:c02a704b88f795501f624d0369394d8fa9b14aa7e91c348fc697411bdd715b52

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
