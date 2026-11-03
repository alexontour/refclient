FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /build
COPY pom.xml ./
COPY ref-client-common ./ref-client-common
COPY ref-client-ihe ./ref-client-ihe
COPY ref-client-rest ./ref-client-rest
RUN --mount=type=cache,target=/root/.m2 mvn -B -ntp -DskipTests package
COPY scripts/DockerHealthcheck.java /build/healthcheck/DockerHealthcheck.java
RUN javac -d /build/healthcheck /build/healthcheck/DockerHealthcheck.java

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /build/ref-client-rest/target/*jar-with-dependencies.jar /app/refclient.jar
COPY ref-client-rest/resources /app/resources
COPY ui /app/ui
COPY --from=build /build/healthcheck/DockerHealthcheck.class /app/healthcheck/DockerHealthcheck.class
RUN mkdir -p /app/log /app/keystore /app/data && chown -R 10001:10001 /app && sed -i 's/rootLogger.level = debug/rootLogger.level = info/' /app/resources/log4j2.properties
USER 10001:10001
EXPOSE 8087
ENTRYPOINT ["java", "-Dfile.encoding=UTF-8", "-jar", "/app/refclient.jar"]
