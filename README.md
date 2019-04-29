# Usage

* Download kafka into working directory first.
  - Go to https://kafka.apache.org/downloads,
  - Download the latest one.
  - Extract it to the working dir.
  - Rename it as `kafka`.

* Change the parameters in config.sh if needed (i.e. java path).

* Run Zookeeper
```
. ./run_zookeper.sh
```

* Run Kafka
```
. ./run_kafka.sh
```

* Create Topic
```
. ./create_topic.sh {topic_name}
```

* List Topics
```
. ./list_topics.sh
```

* Open console to produce messages in a given topic
```
. ./start-producer-console.sh {topic_name}
```

* Open console to see the produced messages in a given topic
```
. ./start-consumer-console.sh {topic_name}
```

```
Sources:
http://cloudurable.com/blog/kafka-tutorial-kafka-from-command-line/index.html
http://kafka.apache.org/documentation.html#uses_messaging
```
