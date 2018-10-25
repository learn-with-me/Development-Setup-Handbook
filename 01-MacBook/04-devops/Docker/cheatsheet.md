# Docker Cheatsheet

##### Info

```
$ docker --version               // Docker version information
$ docker version                 // Displays client version and Server version as well
$ docker info                    // More detailed info
$ docker --help                  // Docker Manual
$ docker <command> --help        // Docker Manual for specific command
```

##### Build

```
$ docker build -t myapp:1.0                    // Build an image from Dockerfile in the current directory with a tag
$ docker images                                // List all images locally stored with Docker engine
$ docker image ls                              // List all images locally stored with Docker engine
$ docker image ls -a                           // List all images (including hidden)
$ docker rmi alpine:3.4                        // Delete an image from local image store
```

##### Ship

```
$ docker pull alpine:3.4                        // Pull an image from a registry
$ docker tag alpine:3.4 myrepo/myalpine:3.4     // Retag a local image with a new image name and tag
$ docker login my.registry.com:8000             // Log into a registry (Docker Hub by default)
$ docker push myrepo/myalpine:3.4               // Push an image to a registry
```

##### Run

```
$ docker run <image>                    // Creates a new container from the image and start it
$ docker run -d -p 80:80 --name webserver nginx        // Start a Dockerized web server
$ docker start web                      // Start an existing container
$ docker stop web                       // Stop a running container through SIGTERM
$ docker kill web                       // Stop a running container through SIGKILL
$ docker kill $(docker ps -q)           // Kill running containers
$ docker network ls                     // List the networks
$ docker network create --subnet 10.1.0.0/24 --gateway 10.1.0.1 -d overlay mynet    // Create an overlay network
$ docker ps                             // List the running containers
$ docker rm -f $(docker ps -aq)         // Delete all running and stopped containers
$ docker exec -it web bash              // Create a new bash process inside the container and connect it to the terminal
$ docker logs --tail 100 web            // Print the last 100 lines of a container's logs
```

##### Cleanup

```
$ docker system prune                   # single command that will clean up any resources that are dangling
                                            — images, containers, volumes, and networks
$ docker system prune -a                # remove any stopped containers & all unused images (not just dangling images)
```

##### Container Commands

    DOCKER_HIDE_LEGACY_COMMANDS=true docker --help

    docker image ls
    docker container ls                                         # List all the running containers
    docker container ls -a

    docker container run -it openjdk                            # Run container in an interactive mode
    docker container run -d jboss/wildfly                       # Run container in a detached mode
    docker container run -d --name web jboss/wildfly
    docker container run -it --name web jboss/wildfly bash      # This is to override the default command and run your own
    docker container run -it --name web -P jboss/wildfly             [To let the container pick a random port]
    docker container run -it --name web -p 8080:8080 jboss/wildfly   [To let the container pick the port passed in]

    # Mount local directory on container
    docker container run -it --name web -p 8080:8080
        -v `pwd`/webapp.war:/opt/jboss/wildfly/standalone/deployments/webapp.war jboss/wildfly

    docker container logs <container_name>
    docker container logs unruffled_easley
    docker container logs unruffled_easley -f                   # Tailing the logs

    docker container stop <container-id>                        # Stop the container
    docker container stop bb655989064b
    docker container rm bb655989064b                            # Remove the container
    docker container rm -f bb655989064b                         # Stop and remove the container in a single command

    You need to be able to expose ports and attach volumes , so that it can deploy .war files to it.

##### Docker Machine \(not required on Unix machine\)

```
$ docker-machine --version
$ docker-machine env myhost
$ eval $(docker-machine env myhost)                   // Command to configure your shell
$ docker-machine create --driver=virtualbox myhost    // Create a docker host on a computer or cloud provider
$ docker-machine create -d virtualbox myhost          // Same command as above
```

##### Reference

```
https://github.com/wsargent/docker-cheat-sheet
```



