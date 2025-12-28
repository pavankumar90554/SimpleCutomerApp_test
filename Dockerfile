FROM tomcat:9.0-jdk8-temurin

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR (any name) as ROOT app
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
