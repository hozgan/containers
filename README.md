# Docker Containers

> You can install any composer version with argument --for 2.5

```shell
docker run --rm \
    -v $(pwd):/opt \
    -w /opt ghcr.io/hozgan/containers:php7 \
    composer require --dev hozgan/sail-standalone --for 1.1
```