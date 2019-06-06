FROM maven:3-alpine

COPY pom.xml pipeline/

COPY src/ pipeline/src/

WORKDIR pipeline/

RUN mvn clean install

ENTRYPOINT [ "java", "-jar", "/pipeline/target/my-app.jar"]
