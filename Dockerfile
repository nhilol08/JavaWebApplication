FROM openjdk:11-jdk-slim

WORKDIR /app

COPY dist/MyWebsite.war /app

CMD ["java", "-jar", "MyWebsite.war"]
