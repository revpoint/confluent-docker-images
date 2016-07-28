# Builds a base docker image for the Confluent stream platform. It doesn't
# start up any particular service, just installs the platform. Other images
# inherit from this image to start up a particular service.

FROM java:8-jre

ENV DEBIAN_FRONTEND noninteractive
ENV CONFLUENT_MAJOR_VERSION="3.0"
ENV SCALA_VERSION="2.11"

ENV CONFLUENT_USER confluent
ENV CONFLUENT_GROUP confluent

RUN ["groupadd", "-r", "confluent"]
RUN ["useradd", "-r", "-g", "confluent", "confluent"]

RUN apt-get update && \
    apt-get install -y software-properties-common wget && \
    wget -qO - http://packages.confluent.io/deb/${CONFLUENT_MAJOR_VERSION}/archive.key | apt-key add - && \
    add-apt-repository "deb [arch=amd64] http://packages.confluent.io/deb/${CONFLUENT_MAJOR_VERSION} stable main" && \
    apt-get update && \
    apt-get install -y scala confluent-platform-oss-${SCALA_VERSION} && \
    rm -rf /var/lib/apt/lists/*
