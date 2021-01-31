FROM jenkins/jenkins:2.253

USER root

# Install Docker and Docker Compose
# If you want to run Docker commands from Jenkins
RUN cd /tmp && \
    curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

USER jenkins
