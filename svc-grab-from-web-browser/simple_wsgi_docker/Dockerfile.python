FROM python

RUN apt-get -qq update
RUN apt-get install --yes apache2 apache2-dev
RUN apt-get install -y libapache2-mod-wsgi-py3
RUN pip install mod_wsgi
RUN a2enmod wsgi

COPY ./conf/000-default.conf /etc/apache2/sites-enabled/000-default.conf

COPY ./code/index.html /var/www/html/
COPY ./code/wsgi.py /usr/lib/cgi-bin/wsgi.py 

EXPOSE 80

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2$SUFFIX/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2$SUFFIX
ENV APACHE_LOCK_DIR /var/lock/apache2$SUFFIX
ENV APACHE_LOG_DIR /var/log/apache2$SUFFIX

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
