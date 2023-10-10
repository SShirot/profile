FROM tomcat:10.1.13-jdk21-openjdk-slim-bookworm

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD WebAppWeek4.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]