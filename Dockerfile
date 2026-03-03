FROM httpd:2.4

COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf

RUN apt-get update && apt-get install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/local/apache2/conf/conf.d
RUN mkdir -p /var/www/webdav
RUN chown -R daemon:daemon /var/www

EXPOSE 80 8080

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl", "--head", "--fail", "http://localhost:8080/health" ]
