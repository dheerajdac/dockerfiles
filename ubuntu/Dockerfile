FROM ubuntu:20.04

RUN apt-get update -qq 

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata apt-transport-https curl
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
RUN apt-get update -qq

RUN apt-get install -qqy nocache \
    ca-certificates \
    vim neovim \
    git wget zsh gcc g++ make \
    iputils-ping \
    openjdk-17-jdk openjdk-17-source \
    docker-compose \
    nodejs yarn

RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz && \
    tar -xzvf apache-maven-3.8.6-bin.tar.gz && \
    rm apache-maven-3.8.6-bin.tar.gz && \
    mkdir -p /usr/local/apache-maven && \
    mv apache-maven-3.8.6 /usr/local/apache-maven

RUN useradd -ms /bin/bash ubuntu
USER ubuntu
WORKDIR /home/ubuntu