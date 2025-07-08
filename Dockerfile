#Use the OpenJDK base file
FROM openjdk:11-jre-slim

#Establish work directory
WORKDIR /app

#Copy the jar file generated from Spring Boot
COPY target/virtualvuelo-0.0.1-SNAPSHOT.jar app.jar

#Expose the app port
EXPOSE 8089

#Execute app
ENTRYPOINT ["java","-jar","app.jar"]