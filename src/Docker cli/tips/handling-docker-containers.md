# Handling Docker Containers

## Docker run

Run a docker container (creates a container)
```sh
$ docker run <image_name>
$ docker run mongo

$ docker run -d <image_name>        # Run as a daemon in background

# Note: If the image has not been downloaded already locally, it will be downloaded. If the image exists locally, it'll be pulled from downloaded images cache
```

Assign a container name
```sh
$ docker run -d --name some_name <image_name>

# Note: docker assigns random names to each container. Use the above command to give custom names to containers

# Rename a container
$ docker rename old_name custom_name
```

Assign a port to a container
```sh
$ docker run -d -p 8080:8080 <image_name>

# Note: docker assigns random names to each container. Use the above command to give custom names to containers
```

Automatically remove container on exit
```sh
$ docker run --rm <image_name>
$ docker run -p 8080:80 --name web --rm nginx

# Note: docker assigns random names to each container. Use the above command to give custom names to containers
```

## Other Container commands

Start a existing docker container
```sh
$ docker start <container_id>
$ docker start <container_name>

$ docker start -d <image_name>      # Start as a daemon in background

# Note: Only starts a stopped/exited docker container
```

Stop a running containers
```sh
$ docker stop <container_id>
$ docker stop <container_name>
```

List current running containers
```sh
$ docker ps

# List including stopped/exited status
$ docker ps -a
```

Remove a container
```sh
$ docker rm <container_id>
$ docker rm <container_name>

# Note: containers need to be stopped in order for them to be removed
```
