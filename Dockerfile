FROM tomcat:9.0.34
RUN sed -i 's/port="8080"/port="4287"/' ${CATALINA_HOME}/conf/server.xml
ADD ./target/project.war/ ${CATALINA_HOME}/webapps/
CMD ["catalina.sh", "run"]
