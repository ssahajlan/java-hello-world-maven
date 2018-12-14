FROM openjdk:8-jre-alpine
WORKDIR /app
COPY /myapp/1.0/myapp-1.0-jar-with-dependencies.jar /app
CMD ["java -jar myapp-1.0-jar-with-dependencies.jar"]
