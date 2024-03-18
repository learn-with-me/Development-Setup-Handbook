# Handling Docker Images

Downloading a docker image
```sh
$ docker pull <image_name>
$ docker pull mongo
$ docker pull mongo:6.0.2
$ docker pull mongo:latest

# Note: If no tag is provided, docker pull the image with latest tag
```

List docker images downloaded to our machine
```sh
$ docker images
```

Remove a docker image
```sh
$ docker rmi <image_name>
$ docker rmi mongo
$ docker rmi mongo:6.0.2

$ docker rmi <image_id>
$ docker rmi d05826c43c40

# Remove multiple images (use image name or image id)
$ docker rmi mongo postgres redis
```

Downloading a docker image
```sh
```

## References
1. [Docker Hub](https://hub.docker.com/_/mongo)
