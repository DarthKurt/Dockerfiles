#!/bin/sh

apk upgrade --update-cache --available

apk add --no-cache firefox
        desktop-file-utils \
        adwaita-icon-theme \
        ttf-dejavu \
        ffmpeg-libs

# cleanup
apk del --purge
rm -rf /var/cache/apk/* /tmp/* /tmp/.[!.]*

# allow node user to run firefox so tests should be run under node user
# node user inherited from node image
chown -R node:node /usr/lib/firefox
chown -R node:node /usr/bin/firefox