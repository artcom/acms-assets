FROM httpd:2.4

COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf

RUN mkdir /usr/local/apache2/conf/conf.d
RUN mkdir -p /var/www/webdav
RUN chown -R daemon:daemon /var/www

EXPOSE 80
