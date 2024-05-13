---
tags:
  - docker
  - cheatsheet
---

# Docker Cheatsheet

## Info

```sh
# Docker version information
$ docker --version

# Displays client version and Server version
$ docker version

# More detailed info
$ docker info

# Docker Manual
$ docker --help

# Docker Manual for specific command
$ docker <command> --help
```

## Docker Resources

```sh
# List all images locally stored with Docker engine
$ docker images

# List all images locally stored with Docker engine
$ docker image ls

# List all images (including hidden)
$ docker image ls -a

# Delete an image from local image store
$ docker rmi alpine:3.4
```

## Build

```sh
# Build an image from Dockerfile in the current directory with a tag
$ docker build -t myapp:1.0

```

### Build Options

```sh
# Show the output of the run commands that were not loaded from the cache
# Alternatively use -> export BUILDKIT_PROGRESS=plain
--progress plain

# Rerun steps that have been cached
--no-cache
```

## Ship

```sh
# Pull an image from a registry
$ docker pull alpine:3.4

# Retag a local image with a new image name and tag
$ docker tag alpine:3.4 myrepo/myalpine:3.4

# Log into a registry (Docker Hub by default)
$ docker login my.registry.com:8000

# Push an image to a registry
$ docker push myrepo/myalpine:3.4
```

## Run

```sh
# Creates a new container from the image and start it
$ docker run <image>

# Start a Dockerized web server
$ docker run -d -p 80:80 --name webserver nginx

# Start an existing container
$ docker start web

# Stop a running container through SIGTERM
$ docker stop web

# Stop a running container through SIGKILL
$ docker kill web

# Kill running containers
$ docker kill $(docker ps -q)

# List the networks
$ docker network ls

# Create an overlay network
$ docker network create --subnet 10.1.0.0/24 --gateway 10.1.0.1 -d overlay mynet

# List the running containers
$ docker ps

# Delete all running and stopped containers
$ docker rm -f $(docker ps -aq)

# Create a new bash process inside the container and connect it to the terminal
$ docker exec -it web bash

# Print the last 100 lines of a container's logs
$ docker logs --tail 100 web
```

## Prune / Cleanup

```sh
# single command that will clean up any resources that are dangling
$ docker system prune
    — images, containers, volumes, and networks

# remove any stopped containers & all unused images (not just dangling images)
$ docker system prune -a
```

## Container Commands

```sh
DOCKER_HIDE_LEGACY_COMMANDS=true docker --help

docker image ls

# List all the running containers
docker container ls
docker container ls -a

# Run container in an interactive mode
docker container run -it openjdk

# Run container in a detached mode
docker container run -d jboss/wildfly
docker container run -d --name web jboss/wildfly

# # This is to override the default command and run your own
docker container run -it --name web jboss/wildfly bash

# To let the container pick a random port
docker container run -it --name web -P jboss/wildfly

# To let the container pick the port passed in
docker container run -it --name web -p 8080:8080 jboss/wildfly

# Mount local directory on container
docker container run -it --name web -p 8080:8080
    -v `pwd`/webapp.war:/opt/jboss/wildfly/standalone/deployments/webapp.war jboss/wildfly

docker container logs <container_name>
docker container logs unruffled_easley
# Tailing the logs
docker container logs unruffled_easley -f

# Stop the container
docker container stop <container-id>
docker container stop bb655989064b
# Remove the container
docker container rm bb655989064b
# Stop and remove the container in a single command
docker container rm -f bb655989064b
```

> You need to be able to expose ports and attach volumes, so that it can deploy `.war` files to it.

## Network Settings

```sh
# Set custom dns servers for the container
--dns=[]

# Connect a container to a network
--network="bridge"
    'bridge': create a network stack on the default Docker bridge
    'none': no networking
    'container:<name|id>': reuse another containers network stack
    'host': use the Docker host network stack
    '<network-name>|<network-id>': connect to a user-defined network

# Add network-scoped alias for the container
--network-alias=[]

# Add a line to /etc/hosts (host:IP)
--add-host=""

# Sets the container's Ethernet device's MAC address
--mac-address=""

# Sets the container's Ethernet device's IPv4 address
--ip=""

# Sets the container's Ethernet device's IPv6 address
--ip6=""

# Sets one or more container's Ethernet device's link local IPv4/IPv6 addresses
--link-local-ip=[]
```

## Reference

* Official docker [site](https://docs.docker.com/)
* Official docker [command reference](https://docs.docker.com/engine/reference/run/)
* [Docker cheatsheet](https://github.com/wsargent/docker-cheat-sheet) | GitHub : wsargent
