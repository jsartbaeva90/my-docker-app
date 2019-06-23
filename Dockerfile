FROM centos
LABEL maintainer="jsartbaeva90"
RUN yum install httpd -y
RUN systemctl enable httpd
COPY ./index.html /var/www/html/index.html
EXPOSE 80
RUN echo "THIS IS MY PAGE !">> /var/www/html/index.html
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]

