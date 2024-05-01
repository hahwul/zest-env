#/bin/sh -l
set -x

ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then
    ARCH="amd64"
    url=$(curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r '.assets[].browser_download_url | select(contains("linux64") and endswith("gz"))')
elif [ "$ARCH" = "aarch64" ]; then
    ARCH="arm64"
    url=$(curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r '.assets[].browser_download_url | select(contains("linux-aarch64") and endswith("gz"))')
else
    echo "Unsupported architecture"
    echo "Use to x86_64 mode"
    url=$(curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r '.assets[].browser_download_url | select(contains("linux64") and endswith("gz"))')
fi

curl -s -L "$url" -o /build/geckodriver.gz 
tar -xvf /build/geckodriver.gz
