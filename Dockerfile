FROM openjdk:11
EXPOSE 8080
ADD target/project.war project.war
ENTRYPOINT ["java","-war","/project.war"]
