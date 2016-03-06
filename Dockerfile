FROM centos:7

RUN yum -y install java-1.8.0-openjdk
RUN yum -y install java-1.8.0-openjdk-devel
ENV JAVA_HOME /usr/lib/jvm/java/

RUN yum -y install epel-release 
RUN yum -y install nginx
ADD nginx.conf /etc/nginx/nginx.conf
CMD nginx && tail -F /var/log/nginx/error.log
