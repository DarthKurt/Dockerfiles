#!/bin/sh

apk upgrade --update-cache --available

apk add --no-cache chromium
        libstdc++ \
        harfbuzz \
        nss \
        freetype \
        ttf-dejavu \
        ttf-freefont

# cleanup
apk del --purge
rm -rf /var/cache/apk/* /tmp/* /tmp/.[!.]*