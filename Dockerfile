# Use a base image with Tomcat installed
FROM tomcat:8-jdk8

# Set the working directory
WORKDIR /app

# Copy the HTML code to the working directory
COPY /data/. .

# Package the HTML code into a WAR file
RUN jar -cvf resume.war .

# Copy the WAR file to the Tomcat webapps directory
RUN cp resume.war /usr/local/tomcat/webapps/

# Start Tomcat
CMD ["catalina.sh", "run"]
