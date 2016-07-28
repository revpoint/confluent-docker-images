FROM docker.jangl.com/confluent-platform

COPY kafka-connect-docker.sh /usr/local/bin/

RUN ["chown", "-R", "confluent:confluent", "/etc/kafka/connect-distributed.properties", "/usr/local/bin/kafka-connect-docker.sh"]
RUN ["chmod", "+x", "/usr/local/bin/kafka-connect-docker.sh"]

EXPOSE 8083

WORKDIR /etc/kafka

USER confluent
ENTRYPOINT ["/usr/local/bin/kafka-connect-docker.sh"]
