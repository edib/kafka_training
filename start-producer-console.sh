#!/usr/bin/env bash

. config.sh

if [[ -z $1 ]]; then
        echo "need a topic name"
        return 1
fi

kafka/bin/kafka-console-producer.sh \
    --broker-list $kafka_host:$kafka_port \
    --topic $1
