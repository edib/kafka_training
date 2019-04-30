#!/usr/bin/env bash

if [ $# -lt 1 ]
  then

    cat <<HELP_USAGE
#===============================================================================
#
#          FILE:  describe_topics.sh
#         USAGE:  ./describe_topics.sh TOPIC_NAME
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


# List existing topics
kafka/bin/kafka-topics.sh --describe \
    --zookeeper $zk_host:$zk_port \
    --topic $1
