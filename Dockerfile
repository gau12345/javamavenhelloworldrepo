# Use an official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven-built JAR file from the target directory to the container
COPY target/helloworld-0.0.1-SNAPSHOT.war /app/helloworld-0.0.1-SNAPSHOT.war

# Expose port 8080 (default for Spring Boot web apps)
EXPOSE 8082

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/helloworld-0.0.1-SNAPSHOT.war"]
