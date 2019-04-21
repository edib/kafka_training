#!/usr/bin/env bash

. config.sh

kafka/bin/zookeeper-server-start.sh  kafka/config/zookeeper.properties >> zookeeper.log 2>&1 &
