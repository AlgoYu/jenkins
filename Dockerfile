FROM openjdk:11.0.16-jre
COPY build/libs/Jenkinsfile-0.0.1-SNAPSHOT.jar /myjar
EXPOSE 9010
CMD ["java", "-jar","/myjar/Jenkinsfile-0.0.1-SNAPSHOT.jar"]