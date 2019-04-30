#!/usr/bin/env bash

if [ $# -lt 3 ]
  then

    cat <<HELP_USAGE
#===============================================================================
#
#          FILE:  create_topics.sh
#         USAGE:  ./create_topics.sh topic replication-factor partitions
#   DESCRIPTION: This script is to ...
#       OPTIONS:
#  REQUIREMENTS:
#          BUGS:
#         NOTES:
#        AUTHOR:  ibrahim edib kökdemir, kokdemir@gmail.com
#       COMPANY:  Tübitak YTE
#       VERSION:  0.1
#       CREATED:  2018-02-28 17:24:00 +03
#      REVISION:  2019-02-15 22:19:07 +03
#===============================================================================
HELP_USAGE
    return 1
fi

. config.sh

# Create a topic
kafka/bin/kafka-topics.sh --create \
  --zookeeper $zk_host:$zk_port \
  --replication-factor 1 --partitions 1 \
  --topic $1
