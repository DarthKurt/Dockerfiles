###################################################
## Alpine image with Git and tools installed     ##
## This image is used in CI pipelines to run     ##
## scripts that require Git and some other tools ##
###################################################

ARG ALPINE_VERSION="3.23"

FROM alpine:${ALPINE_VERSION}

LABEL org.opencontainers.image.description="A lightweight Docker image for shell scripting \
    and git, consisting of Alpine Linux with bash, coreutils, findutils, gawk, curl, jq, yq, and jsonnet."

RUN apk add --no-cache \
      bash \
      curl \
      coreutils \
      findutils \
      gawk \
      git \
      jq \
      jsonnet \
      yq \
    && bash --version \
    && curl --version \
    && git --version \
    && gawk --version \
    && jq --version \
    && yq --version \
    && jsonnet --version

SHELL ["/bin/bash", "-euo", "pipefail", "-c"]