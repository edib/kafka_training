#!/usr/bin/env bash

. config.sh

if [[ -z $1 ]]; then
        echo "need a topic name"
        return 1
fi


# List existing topics
kafka/bin/kafka-topics.sh --describe \
    --zookeeper $zk_host:$zk_port \
    --topic $1
