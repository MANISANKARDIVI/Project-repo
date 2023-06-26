FROM openjdk:8
EXPOSE 8080
ADD target/*.war /root/project.war 
ENTRYPOINT ['java','-war','target/project.war']
