# Building Custom Docker Image

## Build image for Tengine

Tengine doesn't have a readily available docker image

### Download Tengine
```sh
https://tengine.taobao.org/download.html

# or Direct download link
https://tengine.taobao.org/download/tengine-2.3.3.tar.gz
```

### Base Debian Container

```sh
# Run debian container and get to the bash prompt
$ docker run -it debian bash
```

Curl is not available by default. Install curl
```
/# apt-get update
/# apt-get install -y curl
```

Download tengine file
```
/# curl <file_url> > <download_path>
/# curl https://tengine.taobao.org/download/tengine-2.3.3.tar.gz > /opt/tengine-2.3.3.tar.gz
```

Open zip file
```
/# cd /opt
/opt# tar xzf tengine-2.3.3.tar.gz
/opt# cd tengine-2.3.3
```

Before installing tengine, it'll require C to be installed
It'll also require PCRE and OpenSSL libraries
```
/# apt-get install -y gcc
/# apt-get install -y libpcre3-dev
/# apt-get install -y libssl-dev

/# apt-get install -y make
```

Install tengine
```sh
/opt/tengine-2.3.3# ./configure
/opt/tengine-2.3.3# make
/opt/tengine-2.3.3# make install

# by default, it will be installed to /usr/local/nginx
```

Start the server
```sh
# Check if the server is running
/# ps aux

# If not, go to the installation location, or run the executable below
/# /usr/local/nginx/sbin/nginx

# Check if the server is running
/# ps aux

# You should see a master and worker process
```

### Building Dockerfile

Based on the steps performed above

```
FROM debian
RUN apt-get udpate && apt-get install -y \
    curl \
    gcc \
    libpcre3-dev \
    libssl-dev \
    make

RUN curl https://tengine.taobao.org/download/tengine-2.3.3.tar.gz > /opt/tengine-2.3.3.tar.gz

WORKDIR /opt

RUN tar xzf tengine-2.3.3.tar.gz

WORKDIR /opt/tengine-2.3.3

RUN ./configure
RUN make
RUN make install

# forward requests and error logs to docker log collector
# Tengine log paths are different than standard nginx paths
# RUN ln -sf /dev/stdout /var/log/nginx/access.log \
#     && ln -sf /dev/stderr /var/log/nginx/error.log
RUN ln -sf /dev/stdout /usr/local/nginx/logs/access.log \
    && ln -sf /dev/stderr /usr/local/nginx/logs/error.log

EXPOSE 80 443

# Found from official nginx image on docker hub
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
```

### Building Tengine Image & Container

```sh
$ docker build -t custom/tengine:2.3.3 .
$ docker images
$ docker run -p 8000:80 custom/tengine:2.3.3
```
