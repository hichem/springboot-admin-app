# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add maintainer info
LABEL maintainer = "admin@alliance-rnm.com"

#Add a volume pointing to /tmp
VOLUME /tmp

# Expose application port
EXPOSE 80

ARG JAR_FILE

# Add application jar file to the container
COPY ${JAR_FILE} app.jar

# Add App Insights Config File
ADD AI-Agent.xml AI-Agent.xml

# Download Azure App Insights Agent
ADD https://github.com/microsoft/ApplicationInsights-Java/releases/download/2.5.0/applicationinsights-agent-2.5.0.jar applicationinsights-agent-2.5.0.jar

# Run the jar file
ENTRYPOINT ["java", "-javaagent:applicationinsights-agent-2.5.0.jar", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
