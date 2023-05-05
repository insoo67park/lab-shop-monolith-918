docker run \
--name myconnet \
--net kafka_default \
-p 8083:8083 \
-e CONNECT_BOOTSTRAP_SERVERS=172.18.0.3:29092 \
-e CONNECT_GROUP_ID=1 \
-e CONNECT_CONFIG_STORAGE_TOPIC=storageTopic \
-e CONNECT_OFFSET_STORAGE_TOPIC=offsetStorageTopic \
-e CONNECT_STATUS_STORAGE_TOPIC=statusStorageTopic \
-e CONNECT_OFFSET_STORAGE_REPLICATION_FACTOR=1 \
-e CONNECT_STATUS_STORAGE_REPLICATION_FACTOR=1 \
-e CONNECT_CONFIG_STORAGE_REPLICATION_FACTOR=1 \
-e CONNECT_KEY_CONVERTER=org.apache.kafka.connect.json.JsonConverter \
-e CONNECT_VALUE_CONVERTER=org.apache.kafka.connect.json.JsonConverter \
-e CONNECT_REST_ADVERTISED_HOST_NAME=insoo67park-labshopmono-5tx9rc6kh88 \
-it my-kafka-connect:latest /bin/bash
