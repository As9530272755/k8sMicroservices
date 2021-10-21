#Dubbo dubboadmin
FROM hub.zhangguiyuan.com/baseimage/tomcat-base:v8.5.43

MAINTAINER zhangguiyaun

RUN yum install unzip -y  
ADD server.xml /apps/tomcat/conf/server.xml
ADD logging.properties /apps/tomcat/conf/logging.properties
ADD catalina.sh /apps/tomcat/bin/catalina.sh
ADD run_tomcat.sh /apps/tomcat/bin/run_tomcat.sh
ADD dubboadmin.war  /data/tomcat/webapps/dubboadmin.war
RUN cd /data/tomcat/webapps && unzip dubboadmin.war && rm -rf dubboadmin.war && chown -R nginx.nginx /data /apps

COPY dubbo.properties /data/tomcat/webapps/dubboadmin/WEB-INF/dubbo.properties
EXPOSE 8080 8443

CMD ["/apps/tomcat/bin/run_tomcat.sh"]
