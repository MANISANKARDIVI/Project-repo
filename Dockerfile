FROM tomcat:9.0.34

ADD /target/project.war/  ${CATALINA_HOME}/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
