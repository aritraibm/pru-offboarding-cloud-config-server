#cmd : docker build -t cloud-config-service .
FROM openjdk:8
EXPOSE 9296
ADD target/cloud-config-service.jar cloud-config-service.jar
ENTRYPOINT ["java","-jar","/cloud-config-service.jar"]