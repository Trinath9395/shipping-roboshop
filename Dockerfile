FROM maven
WORKDIR /opt/server
COPY pom.xml /opt/server
COPY src /opt/server/src
RUN mvn clean package
RUN ls -ltr target