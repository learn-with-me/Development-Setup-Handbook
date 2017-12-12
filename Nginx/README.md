# Nginx Setup

##### Installation

```
Option 1
> brew install nginx
```

##### Verification

```
/usr/local/var/www                            // Docroot
/usr/local/etc/nginx/nginx.conf               // Default port set to 8080
/usr/local/etc/nginx/servers/                 // nginx loads all the files here
/usr/local/Cellar/nginx/1.12.2_1              // Install location
nginx                                         // Start the server
brew services start nginx                     // Start the server as a background service

Once you start the server, navigate to
http://localhost:8080
```



