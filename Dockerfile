# We use Tomcat 9 with JDK 8 (matching your Eclipse setup)
FROM tomcat:9.0-jdk8-openjdk-slim

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file from the target folder to Tomcat's webapps folder
# Note: Renaming it to ROOT.war makes it available at the main URL
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Start Tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]
