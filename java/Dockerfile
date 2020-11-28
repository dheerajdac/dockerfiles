FROM adoptopenjdk/openjdk11:alpine
RUN mkdir /root/.m2 && mkdir /root/.m2/repository && mkdir /root/.ssh
RUN apk add --no-cache \
		git \
		openssh-client \
		bash \
		vim \
		curl \
		ca-certificates zip unzip gnupg docker-cli

ENV MAVEN_VERSION 3.6.3
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH

RUN wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  mv apache-maven-$MAVEN_VERSION /usr/lib/mvn

