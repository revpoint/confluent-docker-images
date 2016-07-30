FROM docker.jangl.com/confluent-platform

COPY schema-registry-docker.sh /usr/local/bin/

RUN ["chown", "-R", "confluent:confluent", "/etc/schema-registry/schema-registry.properties", "/usr/local/bin/schema-registry-docker.sh"]
RUN ["chmod", "+x", "/usr/local/bin/schema-registry-docker.sh"]

EXPOSE 8081

USER confluent
ENTRYPOINT ["/usr/local/bin/schema-registry-docker.sh"]
