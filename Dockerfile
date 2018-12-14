FROM openjdk:8-jre-alpine
WORKDIR /var/lib/jenkins/workspace/MavProj/target/
COPY . .
EXPOSE 3000
CMD java -jar myapp-1.0-jar-with-dependencies.jar
