FROM maven:3.8.6-jdk-11
USER root

#COPY target/*.jar /opt/hello1-ver1.jar
#CMD java -jar /opt/hello1-ver1.jar

COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean compile package

EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/home/app/target/hello1-ver1.jar"]
