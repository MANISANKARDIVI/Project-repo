FROM tomcat:9.0.34

RUN sed -i 's/8080/9090/' /usr/local/tomcat/conf/server.xml

COPY target/project.war /usr/local/tomcat/webapps

EXPOSE 9090

CMD ["catalina.sh", "run"]
