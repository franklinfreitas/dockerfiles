# --------------------------------------------------------
# This is the Dockerfile for Grunt JS
#
# Installs Nodejs and Grunt
#
#
# HOW TO BUILD THIS IMAGE
# --------------------------------------------------------
# docker build -f grunt.debian.dockerfile -t grunt .

FROM debian:latest

RUN echo '==== Install Nodejs and NPM  ====' && \
    apt-get update && \
    apt-get install -y curl gnupg && \
    curl --silent --location https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    echo '==== Installing Grunt ====' && \
    npm install -g grunt-cli && \
    rm -rf /var/lib/apt/lists/*
    
VOLUME /project

WORKDIR /project

CMD ["bash"]