FROM oraclelinux:7-slim

RUN yum update -y && yum install -y git curl unzip wget java && yum clean all
  
RUN cd /tmp && \
    wget http://mirrors.ibiblio.org/apache/tomcat/tomcat-8/v8.5.38/bin/apache-tomcat-8.5.38.tar.gz && \
    cd /opt && tar -xvzf /tmp/apache-tomcat-8.5.38.tar.gz && \
    rm /tmp/apache-tomcat-8.5.38.tar.gz && \
    sed -i "s/webapps/\/webapps/g" /opt/apache-tomcat-8.5.38/conf/server.xml
 
EXPOSE 8080
 
CMD ["/opt/apache-tomcat-8.5.38/bin/catalina.sh", "run"]
