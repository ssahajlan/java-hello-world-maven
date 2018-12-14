FROM openjdk:8-jre-alpine
WORKDIR /app
COPY /var/lib/jenkins/workspace/MavProj/target/myapp-1.0-jar-with-dependencies.jar /app
CMD ["java -jar myapp-1.0-jar-with-dependencies.jar"]
EXPOSE 3000
