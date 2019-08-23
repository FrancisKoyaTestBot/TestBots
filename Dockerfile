FROM openjdk:11

MAINTAINER connect@aiknow.in

COPY target/core-1.0.0-SNAPSHOT.jar application.jar
CMD ["java", "-jar", "application.jar"]

# expose port
EXPOSE 5000
