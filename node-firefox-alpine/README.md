# Node + Firefox on Alpine

Enrich default node-alpine images with the Firefox package to run tests agains it or do some other tatsks required firefox and node on the same image.

Images could provide some defaults for build variables, but you could override them.

To build with defaults:

```bash
docker build -f Dockerfile.14.17-89-3.13 \
    -t YOUR_FF_IMAGE_TAG \
    .
```

To build with custome node image and/or behind the proxy:

```bash
docker build -f Dockerfile.14.17-89-3.13 \
    -t YOUR_FF_IMAGE_TAG \
    --build-arg https_proxy=https://proxy.example.net:443 \
    --build-arg node_image="private-docker.example.net/super-node:14.17.0-alpine3.13" \
    .
```
