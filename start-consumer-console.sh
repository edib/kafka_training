#!/usr/bin/env bash

. config.sh

if [[ -z $1 ]]; then
        echo "need a topic name"
        return 1
fi

kafka/bin/kafka-console-consumer.sh \
        --bootstrap-server $kafka_host:$kafka_port \
        --topic $1 \
        --from-beginning \
        --consumer.config=kafka/config/consumer.properties
