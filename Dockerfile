#cmd : docker build -t config-service .
FROM openjdk:8-jre-slim

ENV HOS=192.168.29.141

# Set the working directory to /app
WORKDIR /app

# Copy the Eureka server JAR file to the container
COPY target/config-service.jar /app

# Expose the default Eureka server port
EXPOSE 9296

# Start the Eureka server
CMD ["java", "-jar", "config-service.jar"]