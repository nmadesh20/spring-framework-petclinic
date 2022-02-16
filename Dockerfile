FROM openjdk:8-jdk-alpine
LABEL Author="Madesh"
COPY target/petclinic.war petclinic.war
ENTRYPOINT ["java","-war","/petclinic.war"]
