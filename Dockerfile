FROM openjdk:8-jre-alpine
WORKDIR /app
COPY /var/lib/jenkins/workspace/MavProj/target/myapp-1.0-jar-with-dependencies.jar /app
EXPOSE 3000
CMD ["java -jar myapp-1.0-jar-with-dependencies.jar"]
