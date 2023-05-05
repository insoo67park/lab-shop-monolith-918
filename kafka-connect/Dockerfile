FROM confluentinc/cp-kafka-connect:latest

USER 0

RUN mkdir -p /usr/share/java/kafka-connect-jdbc \
&& echo "===> Installing MySQL connector" \
&& curl https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.19/mysql-connector-java-8.0.19.jar  --output /usr/share/java/kafka-connect-jdbc/mysql-connector-java-8.0.19.jar

ENTRYPOINT ["/bin/bash", "-c", "/etc/confluent/docker/run"]
