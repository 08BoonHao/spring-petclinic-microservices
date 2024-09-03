# Use a base image with JDK 17
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file to the container
COPY target/customer-service-*.jar customer-service.jar

# Expose the port that the service runs on
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "customer-service.jar"]
