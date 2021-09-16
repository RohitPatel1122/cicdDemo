#image to build from
FROM openjdk:8-jdk-alpine

#Create useer as its advisable not run the commands as root user
RUN addgroup -S spring && adduser -S springuser -G spring
USER springuser

#create working dir springuser
WORKDIR /home/springuser

#copy file(s) from host to image
ARG JAR_FILE=build/libs/ci-cd-demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

#configures main process executable command
ENTRYPOINT ["java", "-Xmx512m", "-Xms256m", "-jar", "app.jar"]
