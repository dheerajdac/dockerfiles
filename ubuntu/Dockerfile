FROM ubuntu:20.04

RUN apt-get update -qq 
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -qqy nocache \
    apt-transport-https \
    ca-certificates \
    curl \
    vim \
    neovim \
    git \
    openjdk-11-jdk \
    maven \
    zsh

RUN mkdir /root/.m2 && mkdir /root/.m2/repository && mkdir /root/.ssh

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

COPY config /root/
