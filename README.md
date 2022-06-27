# zest-env
[![CI](https://github.com/hahwul/zest-env/actions/workflows/docker.yml/badge.svg)](https://github.com/hahwul/zest-env/actions/workflows/docker.yml)
[![CD](https://github.com/hahwul/zest-env/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hahwul/zest-env/actions/workflows/docker-publish.yml)

## 🤔 What is Zest
> Zest is an experimental specialized scripting language (also known as a domain-specific language) originally developed by the Mozilla security team and is intended to be used in web oriented security tools.
*from https://www.zaproxy.org/docs/desktop/addons/zest/*

It is included by default with ZAP. However, it can also be used as the CLI. this repository for easy setup the CLI environment.

## 📚 Usage
### Github action
```yaml
- name: Zest CLI
  uses: hahwul/zest-env@v1.1.0
  with:
    script: <YOUR-ZEST-SCRIPT>
    flags: "-token 'id=secret' -token 'password=secret'"
```

*Flags*
- `-summary`
- `-list`
- `-debug`
- `-timeout`: timeout for requests in second
- `-prefix`: http://prefix
- `-token`: name=value
- `-http-auth-site`: site
- `-http-auth-realm`: realm
- `-http-auth-user`: user
- `-http-auth-password`: password
- `-insecure`: skip the SSL certificate check

### Dockerhub
#### In CLI
```
docker pull hahwul/zest-env
docker pull hahwul/zest-env:latest
docker pull hahwul/zest-env:v1.1.0
```
![](https://user-images.githubusercontent.com/13212227/170864242-bebfa421-21cc-4f27-8077-230fdfe47202.png)

#### In Dockerfile
```dockerfile
FROM hahwul/zest-env:v1.1.0
# Add your Job
RUN /usr/bin/zest -script <FILENAME>
```

### Github Container Registry (GHCR)
#### In CLI
```
docker pull ghcr.io/hahwul/zest-env:v1.1.0
```
![](https://user-images.githubusercontent.com/13212227/170864338-f557b07c-9dc0-4500-84b4-13a86c5411da.png)

#### In Dockerfile
```dockerfile
FROM ghcr.io/hahwul/zest-env:v1.1.0
# Add your Job
RUN /usr/bin/zest -script <FILENAME>
```

### Local build
```
git clone https://github.com/hahwul/zest-env
cd zest-env
docker build .
```

## Resources
- https://www.zaproxy.org/docs/desktop/addons/zest/
- https://github.com/zaproxy/zest/
- https://twitter.com/hahwul/status/1530234639469932544
- https://www.hahwul.com/2022/05/19/zest-and-headless-authentication-script/
- https://www.hahwul.com/2022/05/28/zest-in-cli/
