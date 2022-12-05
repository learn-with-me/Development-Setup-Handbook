# Persistent Storage

Container based file systems in docker are by default ephemeral.
Volumes allow us to mount persistent disks to one or many containers.

### Nginx example

```
$ docker run -d -p 8080:8080 -v volume_name:path_in_container <image_name>
$ docker run -p 8080:80 --name web --rm -v web:/usr/share/nginx/html nginx
```

To persist the volume on the host machine
```
$ docker run -d -p 8080:8080 -v host_path:path_in_container <image_name>
$ docker run -p 8080:80 --name web --rm -v $PWD:/usr/share/nginx/html nginx
```

### Mounting manually

Creating a volume

```
$ docker volume create --name <volume_name>
$ docker volume create --name webdata

Note: This volume can be later referenced by any container. Name helps finding it easily.
```

Attaching volume

```
Run a daemon nginx container with webdata mounted
$ docker run -d --name web -v webdata:/usr/share/nginx/html -p 8000:80 nginx

Check contents of default html
$ curl localhost:8000
```

Modify contents via docker

```
By directly entering the container
$ docker exec web bash -c 'echo "foo" > /usr/share/nginx/html/index.html'

Check contents of modified html
$ curl localhost:8000
```

Verify data persistence

```
Stop and remove the web docker container
Run a new container web1 using the same command

Check contents of modified html
$ curl localhost:8000

The changes made earlier should persist
```

Mounting the same volume to another container

```
Run a new container web2 using the same command, except the port to be 8001

Check contents of modified html
$ curl localhost:8001

The changes made with container web1 should reflect from container web2 as well.
```

### Inspecting the volume

```
$ docker inspect -f '{{ .Mounts }}' <container_name>
$ docker inspect -f '{{ .Mounts }}' web1

-f flag is used to specify a format to filter results

To find more information about the volume
$ docker volume inspect <volume_name>
$ docker volume inspect webdata
```

### Other volume operations

```
List all volumes
$ docker volume ls

To remove a volume, all containers (where it is mounted on) must be stopped and removed
$ docker volume rm <volume_name>
$ docker volume rm webdata
```
