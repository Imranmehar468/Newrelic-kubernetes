# Use Eclipse Temurin OpenJDK 17
FROM eclipse-temurin:17-jdk

VOLUME /tmp

# Copy Spring Boot jar
COPY target/springboot-k8s-newrelic-0.0.1-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java","-jar","/app.jar"]