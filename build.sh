#!/bin/bash

set -ex

docker build -t docker.jangl.com/confluent-platform confluent-platform/
docker build -t docker.jangl.com/zookeeper zookeeper/
docker build -t docker.jangl.com/kafka kafka/
docker build -t docker.jangl.com/schema-registry schema-registry/
docker build -t docker.jangl.com/rest-proxy rest-proxy/
docker build -t docker.jangl.com/confluent-tools tools/

