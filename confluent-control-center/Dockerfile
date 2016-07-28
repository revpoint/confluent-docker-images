FROM docker.jangl.com/confluent-platform

RUN apt-get update && \
    apt-get install -y confluent-control-center && \
    rm -rf /var/lib/apt/lists/*

COPY confluent-control-center.sh /usr/local/bin/

RUN ["chown", "-R", "confluent:confluent", "/etc/confluent-control-center/control-center.properties", "/usr/local/bin/confluent-control-center.sh"]
RUN ["chmod", "+x", "/usr/local/bin/confluent-control-center.sh"]

USER confluent
ENTRYPOINT ["/usr/local/bin/confluent-control-center.sh"]
