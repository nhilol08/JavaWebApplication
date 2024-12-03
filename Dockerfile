# Use an official OpenJDK image with JDK 11
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the WAR file into the container
COPY dist/MyWebsite.war /app/MyWebsite.war

# Expose the port (optional, for documentation)
EXPOSE 8080

# Set the PORT environment variable dynamically
ENV PORT=8080

# Command to run the app, using the PORT environment variable
CMD ["sh", "-c", "java -jar /app/MyWebsite.war --server.port=${PORT}"]


