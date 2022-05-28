# zest-env
[![CI](https://github.com/hahwul/zest-env/actions/workflows/docker.yml/badge.svg)](https://github.com/hahwul/zest-env/actions/workflows/docker.yml)
[![CD](https://github.com/hahwul/zest-env/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hahwul/zest-env/actions/workflows/docker-publish.yml)

## What is Zest
> Zest is an experimental specialized scripting language (also known as a domain-specific language) originally developed by the Mozilla security team and is intended to be used in web oriented security tools.
*from https://www.zaproxy.org/docs/desktop/addons/zest/*

It is included by default with ZAP. However, it can also be used as the CLI. this repository for easy setup the CLI environment.

## Usage
### Dockerhub
```
docker pull hahwul/zest-env
docker pull hahwul/zest-env:latest
docker pull hahwul/zest-env:v1.0.0
```

```dockerfile
FROM hahwul/zest-env:v1.0.0
# Add your Job
RUN /usr/bin/zest -script <FILENAME>
```

### Github Container Registry (GHCR)
```
docker pull ghcr.io/hahwul/zest-env:v1.0.0
```

```dockerfile
FROM ghcr.io/hahwul/zest-env:v1.0.0
# Add your Job
RUN /usr/bin/zest -script <FILENAME>
```

### Local build
```
git clone https://github.com/hahwul/zest-env
cd zest-env
docker build .
```
