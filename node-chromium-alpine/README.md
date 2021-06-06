# Node + Chromium on Alpine

Enrich default node-alpine images with the Chromium package to run tests agains it or do some other tatsks required chromium and node on the same image.

Images could provide some defaults for build variables, but you could override them.

To build with defaults:

```bash
docker build -f Dockerfile.14.17-86-3.13 \
    -t YOUR_CHROMIUM_IMAGE_TAG \
    .
```

To build with custome node image and/or behind the proxy:

```bash
docker build -f Dockerfile.14.17-86-3.13 \
    -t YOUR_CHROMIUM_IMAGE_TAG \
    --build-arg https_proxy=https://proxy.example.net:443 \
    --build-arg node_image="private-docker.example.net/super-node:14.17.0-alpine3.13" \
    .
```
