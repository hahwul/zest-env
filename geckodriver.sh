#/bin/bash -l

url=$(curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r '.assets[].browser_download_url | select(contains("linux64") and endswith("gz"))')
curl -s -L "$url" -o /build/geckodriver.gz 
tar -xvf /build/geckodriver.gz
