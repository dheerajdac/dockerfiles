FROM ubuntu:16.04
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    software-properties-common

RUN apt-get install -qqy docker-ce-cli maven openjdk-8-jdk

