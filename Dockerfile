FROM jenkins/ssh-slave
RUN  curl -sSL https://get.docker.com/ | sh
RUN apt-get update &&\
    apt-get install -y openjdk-8-jdk &&\
    apk add --no-cache py-pip &&\
    pip install docker-compose &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*

