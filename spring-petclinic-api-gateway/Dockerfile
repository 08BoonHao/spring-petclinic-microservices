# Use a base image with JDK 17
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file to the container
COPY target/api-gateway-*.jar api-gateway.jar

# Expose the port that the service runs on
EXPOSE 8084

# Run the application
ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
