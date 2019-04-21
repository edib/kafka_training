# Usage

* Download kafka into working directory first.
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
This scripts were inspired from http://cloudurable.com/blog/kafka-tutorial-kafka-from-command-line/index.html.
```
