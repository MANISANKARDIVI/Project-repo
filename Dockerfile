FROM centos

MAINTAINER manisankar.divi@gmail.com
RUN sudo -i
RUN yum install default java -y
RUN java --version
RUN cd /opt

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.tar.gz
RUN tar -xvzf apache-tomcat-9.0.76.tar.gz
RUN mv apache-tomcat-9.0.76.tar.gz tomcat
RUN cd /opt/tomcat
COPY target/project.war /opt/tomcat/webapps/
RUN cd /opt/tomcat/bin
RUN sudo ./startup.sh
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
