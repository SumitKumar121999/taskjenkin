FROM openjdk:11
VOLUME /tmp
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9003
ENTRYPOINT ["java","-jar","/app.jar"]
