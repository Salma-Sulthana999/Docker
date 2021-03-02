FROM centos

MAINTAINER salma

RUN yum -y update
RUN yum install java-11-openjdk-devel -y
RUN yum install maven -y

#setting workdir
WORKDIR /opt

#copy file
COPY target/users-webapp.jar /opt/web-app.jar

EXPOSE 8080

#Run the application with the command line
CMD ["/usr/bin/java", "-jar", "-Dspring.pr<F2>ofiles.active=default", "/opt/web-app.jar"]


