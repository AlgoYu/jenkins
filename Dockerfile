FROM openjdk:11.0.16-jre
COPY build/libs/jenkins-service.jar /myjar
EXPOSE 9010
CMD ["java", "-jar","/myjar/jenkins-service.jar"]