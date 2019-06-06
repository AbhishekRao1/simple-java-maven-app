FROM maven:3-alpine

WORKDIR /

RUN mvn clean install

ENTRYPOINT [ "java", "-jar", "/target/my-app.jar"]
