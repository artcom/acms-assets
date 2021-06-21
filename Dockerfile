FROM httpd:2.4.28

LABEL version="1.2.1"

COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf

RUN mkdir -p /var/www/webdav
RUN chown -R daemon:daemon /var/www
