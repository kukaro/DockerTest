FROM amazonlinux:latest
MAINTAINER the.eris.net

RUN yum update -y
RUN yum install httpd -y
COPY ./index.html /var/www/html/index.html
# copy전에 실행권한 줘야한다.
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]