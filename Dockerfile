FROM tomcat:8.0
RUN cp -a /var/lib/jenkins/workspace/tomcat-maven-docker-pipeline/target/dependency/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]