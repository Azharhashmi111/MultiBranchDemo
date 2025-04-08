# Use official Tomcat base image
FROM tomcat:9.0

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to the ROOT webapp location
COPY target/TomcatDeployment-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (default for Tomcat)
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
