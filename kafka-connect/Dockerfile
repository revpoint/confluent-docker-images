FROM docker.jangl.com/confluent-platform

COPY kafka-connect-docker.sh /usr/local/bin/
COPY kafka-connect-jdbc-3.1.0-SNAPSHOT.jar /usr/local/connect/

RUN ["chown", "-R", "confluent:confluent", "/etc/kafka/connect-distributed.properties", "/usr/local/bin/kafka-connect-docker.sh", "/usr/local/connect/kafka-connect-jdbc-3.1.0-SNAPSHOT.jar"]
RUN ["chmod", "+x", "/usr/local/bin/kafka-connect-docker.sh"]

EXPOSE 8083

WORKDIR /etc/kafka
ENV CLASSPATH /usr/local/connect/*

USER confluent
ENTRYPOINT ["/usr/local/bin/kafka-connect-docker.sh"]
