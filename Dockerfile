FROM eclipse-temurin:11-jre-alpine
WORKDIR /app
COPY target/hello-app-1.0.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

