# Handling Docker Images

Downloading a docker image
```
$ docker pull <image_name>
$ docker pull mongo
$ docker pull mongo:6.0.2
$ docker pull mongo:latest

Note: If no tag is provided, docker pull the image with latest tag
```

List docker images downloaded to our machine
```
$ docker images
```

Remove a docker image
```
$ docker rmi <image_name>
$ docker rmi mongo
$ docker rmi mongo:6.0.2

$ docker rmi <image_id>
$ docker rmi d05826c43c40

To remove multiple images at the same time (use image name or image id)
$ docker rmi mongo postgres redis
```

Downloading a docker image
```
```

Downloading a docker image
```
```

## References
1. [Docker Hub](https://hub.docker.com/_/mongo)
