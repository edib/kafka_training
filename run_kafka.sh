#!/usr/bin/env bash

. config.sh

export KAFKA_OPTS="-Djava.security.auth.login.config=`pwd`/kafka/config/kafka_server_jaas.conf"

echo $KAFKA_OPTS

if [[ -f kafka/config/server-$1.properties   ]]; then
  kafka/bin/kafka-server-start.sh kafka/config/server-$1.properties >> kafka-$1.log 2>&1 &
else
  echo "There is no config file to run!"
fi
