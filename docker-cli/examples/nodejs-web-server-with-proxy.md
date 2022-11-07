# Node.js Web Server with Docker

## Node.js App

Prerequisite: have a `index.js` ready listening on a port ready.

### Dockerfile

`Dockerfile` is just a text file that provides docker engine with instructions on how to build the image.

```
FROM mhart/alpine-node
COPY index.js .
EXPOSE 8000
CMD node index.js
```

### Building the image

```
$ docker build -t myserver .

-t specifies the name of the docker image
```

### Running the container

```
$ docker run -p 8001:8000 myserver

Verify the server is running + port forwarding is setup correctly through firewal
$ curl localhost:8001
```

## Nginx Proxy Container

### Running Nginx Container

```
By default nginx runs on port 80
$ docker run --rm -p 6000:80 nginx

Verify the server is running + port forwarding is setup correctly through firewal
$ curl localhost:6000
```

### Setting up Nginx as Proxy

The intent is to update nginx configurations to proxy web requests into our node.js app

default.conf
```
This file will replace default nginx configuration file.
We have bare-minimum directives in the file.
Nginx will use default if a directive is not defined.

server {
    location / {
        proxy_set_header HOST $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_pass http://app:8000;
    }
}
```

Dockerfile for Nginx image

```
FROM nginx
copy default.conf /etc/nginx/conf.d/
```

Building the image

```
$ docker built -t foo/nginx .
```

Run the container

```
$ docker run -p 6000:80 --link node-app:app --name nginx-proxy foo/nginx

Using link may not be the best way now. TBD.
```

Verify

```
curl http://localhost:6000

This should direct to node.js server response instead of default nginx index html response
```
