
# Start with Java 25 runtime
FROM amazoncorretto:25-alpine

# Install curl for the healthcheck
RUN apk add --no-cache curl

# Copy the jar file into the image
COPY target/app.jar /app.jar

# Expose the application port
EXPOSE 7070

# Run the application
CMD ["java", "-jar", "/app.jar"]