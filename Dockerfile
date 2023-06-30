FROM tomcat:8.5.90-jdk21-openjdk-slim
ADD target/project.war /usr/local/tomcat/webapps/
ENTRYPOINT ["java","-war","/project.war"]
