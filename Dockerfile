FROM tomcat:9.0-jdk8-temurin

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat
COPY target/SimpleCustomerApp.war /usr/local/tomcat/webapps/SimpleCustomerApp.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
