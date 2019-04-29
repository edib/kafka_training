#!/usr/bin/env bash

. config.sh

export KAFKA_OPTS="-Djava.security.auth.login.config=`pwd`/kafka/config/zookeeper_jaas.conf"
kafka/bin/zookeeper-server-start.sh  kafka/config/zookeeper.properties >> zookeeper.log 2>&1 &
