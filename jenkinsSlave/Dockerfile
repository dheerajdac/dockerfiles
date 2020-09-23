FROM ubuntu:20.04
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    software-properties-common

RUN apt-get install -qqy openjdk-14-jdk maven

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

RUN mkdir /root/.m2 && mkdir /root/.m2/repository

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
CMD ["wrapdocker"]
