# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your WAR file into the container
COPY dist/MyWebsite.war /app/MyWebsite.war

# Expose the port your app runs on
EXPOSE 8080

# Command to run the app
CMD ["java", "-jar", "MyWebsite.war", "--server.port=${PORT}"]

