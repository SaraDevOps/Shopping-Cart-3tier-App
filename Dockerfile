# Use an official Tomcat base image
FROM tomcat:8.5-jdk8

# Maintainer of the image
LABEL maintainer="your_email@example.com"

# Remove the default webapps to clean the Tomcat container
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the webapps directory in Tomcat
COPY target/shopping-cart-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

