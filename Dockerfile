FROM maven:3-jdk-7-alpine as build
RUN mkdir -p app
COPY . app/
WORKDIR app
RUN mvn package && cp target/*.war /webapps/