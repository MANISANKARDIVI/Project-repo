FROM openjdk:17
EXPOSE 8080
ADD target/project.war project.war 
ENTRYPOINT ['java','-war','target/project.war']
