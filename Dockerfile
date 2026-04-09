# Use a very light "Run-only" version of Tomcat
FROM tomcat:9.0-jre8-alpine

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the pre-built WAR file you just uploaded
# NOTE: Using *.war will find whatever your file is named
COPY *.war /usr/local/tomcat/webapps/ROOT.war

# Strict memory limits so Render doesn't crash
ENV JAVA_OPTS="-Xmx256m -Xms128m"

EXPOSE 8080
CMD ["catalina.sh", "run"]
