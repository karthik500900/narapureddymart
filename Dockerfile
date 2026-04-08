# STEP 1: Use Maven to build the project
FROM maven:3.6.3-jdk-8 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

# STEP 2: Use Tomcat to run the project
FROM tomcat:9.0-jdk8-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/*
# This line grabs the file created in Step 1 and renames it to ROOT.war
COPY --from=build /home/app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
