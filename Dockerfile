# Use Java 21 runtime
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /usr/local/app

# Copy Maven-generated JAR
COPY target/my-app-1.0.2.jar /usr/local/app/simple-java-app.jar

# Expose application port
EXPOSE 8080

# Start Java application
CMD ["java", "-jar", "/usr/local/app/simple-java-app.jar"]
