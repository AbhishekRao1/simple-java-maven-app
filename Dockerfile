FROM maven:3-alpine

COPY pom.xml /

COPY src/ /src/

WORKDIR /

RUN mvn clean install

ENTRYPOINT [ "java", "-jar", "/target/my-app.jar"]
