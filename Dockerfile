FROM registry.access.redhat.com/ubi8/openjdk-11
COPY target/*.jar /opt/hello1-ver1.jar
CMD java -jar /opt/hello1-ver1.jar
EXPOSE 8181

