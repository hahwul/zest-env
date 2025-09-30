FROM openjdk:20-jdk-slim
ENV FORCE_UPDATE=20250610

RUN apt-get update && apt-get install -q -y \
	git \
	curl \
	jq \
	unzip
RUN mkdir /build
RUN mkdir /work

# Download geckodriver
WORKDIR /build
RUN ls -al
COPY geckodriver.sh .
RUN chmod 755 geckodriver.sh
RUN ./geckodriver.sh
RUN cp /build/geckodriver /usr/local/bin/geckodriver

# Build Zest
WORKDIR /build
RUN git clone https://github.com/zaproxy/zest/

WORKDIR /build/zest
RUN git checkout 0.30.0
RUN ./gradlew assemble
RUN ./gradlew distZip
RUN unzip ./build/distributions/*.zip
RUN cp -R zest-*/* /usr/

# Clean up
WORKDIR /work 
RUN rm -rf /build
CMD ["/usr/bin/zest"]
