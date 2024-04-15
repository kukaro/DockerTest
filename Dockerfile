FROM amazonlinux:latest
MAINTAINER the.eris.net

RUN yum update -y
RUN yum install httpd -y
COPY ./index.html /var/www/html/index.html
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]