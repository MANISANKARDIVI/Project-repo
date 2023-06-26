FROM openjdk:11
EXPOSE 8080
ADD target/*.war *.war
ENTRYPOINT ["java","-war","/*.war"]
