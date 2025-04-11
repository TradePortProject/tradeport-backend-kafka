FROM bitnami/kafka:3.3.1

# Ensure we're running as root
USER root

# Copy the topic creation script to the correct directory
COPY create-topics.sh /bitnami/kafka/

# Change ownership of the script
RUN chown root:root /bitnami/kafka/create-topics.sh

# Grant execution permissions
RUN chmod +x /bitnami/kafka/create-topics.sh

# Start Kafka and execute the script
CMD ["sh", "-c", "/bitnami/kafka/create-topics.sh && /opt/bitnami/scripts/kafka/run.sh"]