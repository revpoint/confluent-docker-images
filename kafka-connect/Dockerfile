FROM docker.jangl.com/confluent-platform

ENV CONFLUENT_USER confluent
ENV CONFLUENT_GROUP confluent

COPY kafka-connect-docker.sh /usr/local/bin/

RUN groupadd -r ${CONFLUENT_GROUP} &&\
    useradd -r -g ${CONFLUENT_GROUP} ${CONFLUENT_USER} &&\
    chown -R ${CONFLUENT_USER}:${CONFLUENT_GROUP} /etc/kafka/connect-distributed.properties /usr/local/bin/kafka-connect-docker.sh &&\
    chmod +x /usr/local/bin/kafka-connect-docker.sh

USER $CONFLUENT_USER

ENTRYPOINT ["/usr/local/bin/kafka-connect-docker.sh"]
