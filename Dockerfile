FROM centos:7              
LABEL MAINTAINER=johnson   
RUN yum install -y httpd  
ADD  index.html /var/www/html/
ADD  00.conf /etc/httpd/conf.d/00.conf
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
