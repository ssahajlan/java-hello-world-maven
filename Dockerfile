FROM openjdk:8-jre-alpine
WORKDIR /app
COPY . .
EXPOSE 3000
CMD java -jar /app/target/myapp-1.0-jar-with-dependencies.jar
