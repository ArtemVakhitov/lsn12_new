FROM maven:3-jdk-7-alpine
RUN mkdir /webapps
RUN mkdir -p app
COPY . app/
WORKDIR app
RUN mvn clean && mvn install && cp target/*.war /webapps/