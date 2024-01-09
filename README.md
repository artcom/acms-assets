# Acms assets

Basic WebDAV server based on Apache httpd server.

## Usage

```bash
docker build -t artcom/acms-assets .
docker run artcom/acms-assets
```

## Extra configuration

Extra configuration (e.g. CORS headers) of the `<Directory>` directive can be added by mounting a file to `/usr/local/apache2/conf/conf.d/<config_name>.conf`.
