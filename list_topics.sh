#!/usr/bin/env bash

. config.sh

# List existing topics
kafka/bin/kafka-topics.sh --list \
    --zookeeper $zk_host:$zk_port 
