# create-topics.sh
#!/bin/bash

# Wait for Kafka to be ready
sleep 10

# Create topics
kafka-topics.sh --create --topic tradeport-notify --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server kafka:9092
kafka-topics.sh --create --topic tradeport-notified --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server kafka:9092

#docker exec -it ba8a587df25408f7ad7d49c5cecf97c89e3a5c962349c0be55d8a677e3597ffa kafka-topics.sh --create --topic tradeport-notify --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server kafka:9092
#docker exec -it ba8a587df25408f7ad7d49c5cecf97c89e3a5c962349c0be55d8a677e3597ffa kafka-topics.sh --create --topic tradeport-notified --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server kafka:9092



echo "Kafka topics created successfully!"