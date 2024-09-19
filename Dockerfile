FROM maven:3-jdk-7-alpine as build
RUN mkdir -p /app
COPY . /app/
WORKDIR /app
RUN mvn clean && mvn install

FROM tomcat:8.0-jre7-alpine
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/