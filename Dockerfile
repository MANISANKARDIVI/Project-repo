FROM tomcat:9.0
MAINTAINER manisankar.divi@gmail.com
COPY target/project.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ['catalina.sh', 'run']
