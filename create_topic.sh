#!/usr/bin/env bash

. config.sh

if [[ -z $1 ]]; then
        echo "need a topic name"
        return 1
fi

# Create a topic
kafka/bin/kafka-topics.sh --create \
  --zookeeper $zk_host:$zk_port \
  --replication-factor 1 --partitions 13 \
  --topic $1
