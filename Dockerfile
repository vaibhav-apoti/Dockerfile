FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
 

