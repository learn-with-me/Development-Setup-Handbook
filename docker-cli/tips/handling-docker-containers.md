# Handling Docker Containers

Run a docker container (creates a container)
```
$ docker run <image_name>
$ docker run mongo

$ docker run -d <image_name>        # Run as a daemon in background

Note: If the image has not been downloaded already locally, it will be downloaded. If the image exists locally, it'll be pulled from downloaded images cache
```

Assign a container name
```
$ docker run -d --name some_name <image_name>

Note: docker assigns random names to each container. Use the above command to give custom names to containers

Rename a container
$ docker rename old_name custom_name
```

Assign a port to a container
```
$ docker run -d -p 8080:8080 <image_name>

Note: docker assigns random names to each container. Use the above command to give custom names to containers
```

Start a existing docker container
```
$ docker start <container_id>
$ docker start <container_name>

$ docker start -d <image_name>      # Start as a daemon in background

Note: Only starts a stopped/exited docker container
```

Stop a running containers
```
$ docker stop <container_id>
$ docker stop <container_name>
```

List current running containers
```
$ docker ps
$ docker ps -a                      # List including stopped/exited status
```

Remove a container
```
$ docker rm <container_id>
$ docker rm <container_name>

Note: containers need to be stopped in order for them to be removed
```
