FROM jenkins/ssh-slave
RUN  curl -sSL https://get.docker.com/ | sh
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN apt-get update &&\
    apt-get install sudo &&\
    apt-get install -y openjdk-8-jdk &&\
    sudo chmod +x /usr/local/bin/docker-compose &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*

