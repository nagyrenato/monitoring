FROM maven:3 as BUILD_IMAGE
ENV APP_HOME=/root/dev/monitoring/
RUN mkdir -p $APP_HOME/src/main/java
WORKDIR $APP_HOME
COPY . .
RUN mvn -B package -e -X --file pom.xml

FROM openjdk:17
WORKDIR /root/
COPY --from=BUILD_IMAGE /root/dev/monitoring/target/monitoring-*.jar .
EXPOSE 8080
CMD java -jar monitoring-*.jar