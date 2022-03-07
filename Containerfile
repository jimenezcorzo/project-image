# Veamos que tan buena memoria tengo...
FROM ubi8/ubi:8.3
MAINTAINER Paco rubenj@mx1.ibm.com
LABEL app="smallwebserver"
ENV PORT 80
RUN yum install -y httpd unzip && yum clean all
ADD ./src/ /var/www/html
EXPOSE $PORT
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
