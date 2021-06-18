# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.20

FROM renovate/buildpack:5-php@sha256:a603bfe21858d060dc92533278f080b6debebfe4a74fe0657b512b713f4f7e96

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
