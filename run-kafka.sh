export KAFKA_HEAP_OPTS="-Xmx1000M -Xms1000M"
export KAFKA_OPTS='-javaagent:~/Kafka/kafka_2.12-3.1.0/libs/jmx_prometheus_javaagent-0.13.0.jar=7075:~/Kafka/kafka_2.12-3.1.0/config/sample_jmx_exporter.yml'
export JMX_PORT=7081
export CONNECT_PRODUCER_BOOTSTRAP_SERVERS="${KAFKA_URL}"
export CONNECT_PRODUCER_SECURITY_PROTOCOL="SSL"
export CONNECT_PRODUCER_SSL_CLIENT_AUTH="required"
export CONNECT_PRODUCER_SSL_TRUSTSTORE_LOCATION="${trustStoreFile}"
export CONNECT_PRODUCER_SSL_TRUSTSTORE_PASSWORD="${trustStorePassword}"
export CONNECT_PRODUCER_SSL_TRUSTSTORE_TYPE="${trustStoreType}"
export CONNECT_PRODUCER_SSL_KEYSTORE_LOCATION="${keyStoreFile}"
export CONNECT_PRODUCER_SSL_KEYSTORE_PASSWORD="${keyStorePassword}"
export CONNECT_PRODUCER_SSL_KEYSTORE_TYPE="${keyStoreType}"
./kafka-server-start.sh ../config/server.properties
