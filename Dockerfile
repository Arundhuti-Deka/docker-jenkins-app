FROM tomcat:9

COPY target/docker-webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
