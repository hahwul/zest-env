# zest-env
[![CI](https://github.com/hahwul/zest-env/actions/workflows/docker.yml/badge.svg)](https://github.com/hahwul/zest-env/actions/workflows/docker.yml)
[![CD](https://github.com/hahwul/zest-env/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hahwul/zest-env/actions/workflows/docker-publish.yml)

## ToC
- [What is Zest](#what-is-zest)
- [Usage](#usage)
  * [Github action](#github-action)
  * [Dockerhub](#dockerhub)
    + [In CLI](#in-cli)
    + [In Dockerfile](#in-dockerfile)
  * [Github Container Registry (GHCR)](#github-container-registry-ghcr)
    + [In CLI](#in-cli-1)
    + [In Dockerfile](#in-dockerfile-1)
  * [Local build](#local-build)

## What is Zest
> Zest is an experimental specialized scripting language (also known as a domain-specific language) originally developed by the Mozilla security team and is intended to be used in web oriented security tools.
*from https://www.zaproxy.org/docs/desktop/addons/zest/*

It is included by default with ZAP. However, it can also be used as the CLI. this repository for easy setup the CLI environment.

## Usage
### Github action
```yaml
- name: Zest CLI
  uses: hahwul/zest-env@v1.0.0-action
  with:
    script: <YOUR-ZEST-SCRIPT>
```

### Dockerhub
#### In CLI
```
docker pull hahwul/zest-env
docker pull hahwul/zest-env:latest
docker pull hahwul/zest-env:v1.0.0
```
![](https://user-images.githubusercontent.com/13212227/170864242-bebfa421-21cc-4f27-8077-230fdfe47202.png)

#### In Dockerfile
```dockerfile
FROM hahwul/zest-env:v1.0.0
# Add your Job
RUN /usr/bin/zest -script <FILENAME>
```

### Github Container Registry (GHCR)
#### In CLI
```
docker pull ghcr.io/hahwul/zest-env:v1.0.0
```
![](https://user-images.githubusercontent.com/13212227/170864338-f557b07c-9dc0-4500-84b4-13a86c5411da.png)

#### In Dockerfile
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
