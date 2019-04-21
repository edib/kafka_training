#!/usr/bin/env bash

. config.sh

kafka/bin/kafka-server-start.sh kafka/config/server.properties >> kafka.log 2>&1 &
