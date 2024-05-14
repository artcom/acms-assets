# Acms assets

Basic WebDAV server based on Apache httpd server.

## Usage

**Build and run container:**

```bash
docker build -t artcom/acms-assets .
docker run -d -p 80:80 --name artcom/acms-assets artcom/acms-assets
```

**Create Directorty and run container:**

```bash
curl -X MKCOL http://localhost:80/catPictures
```

**Upload image:**

```bash
curl -T /path/to/your/local/file/cat2.png -H "Content-Type: image/png" http://localhost:80/catPictures/cat2.png
```

## Extra configuration

Extra configuration (e.g. CORS headers) of the `<Directory>` directive can be added by mounting a file to `/usr/local/apache2/conf/conf.d/<config_name>.conf`.
