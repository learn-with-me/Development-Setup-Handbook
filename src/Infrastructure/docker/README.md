# Docker

1. [Installation](./installation.md)
2. Cheatsheet [Docker](./cheatsheet-docker.md)
3. Cheatsheet [Docker Compose](./cheatsheet-docker-compose.md)
4. Docker Compose [Configuration](./configuration-docker-compose.md)
5. [Docker Networking](./docker-networking.md)
6. [Docker Images](./tips/handling-docker-images.md)
7. [Docker Containers](./tips/handling-docker-containers.md)
8. [Persistent Storage](./tips/handling-persistent-storage.md)
9. [Resource Clean up](./tips/handling-cleanup.md)
10. Example [Nginx with Volume](./recipes/nginx-with-volume.md)
11. Example [Nodejs Web Server w/ Proxy](./recipes/nodejs-web-server-with-proxy.md)
12. Example [Build Custom Docker Image](./recipes/building-custom-docker-image.md)
13. [BuildKit](./buildkit.md)

## Good to know

1. The Docker for Mac application does not use docker-machine to provision that VM; but rather creates and manages it directly.
2. Docker exposes the docker API on a socket in `/var/run/docker.sock`. Since this is the default location where docker will look if no environment variables are set, you can start using docker and docker-compose without setting any environment variables.
3. With Docker for Mac, you get only one VM, and you don’t manage it. It is managed by the Docker for Mac application, which includes auto-update to update the client and server versions of Docker.
4. If you need several VMs and want to manage the version of the Docker client or server you are using, you can continue to use docker-machine, on the same machine.

## To be explored

- pid / uts / ipc settings
- Networking
- Policies
- Debugging, Logging
- Security
- Constraints on resources
- Parameters & Environment Variables

## Resources

1. [Official Docs](https://docs.docker.com)
2. [Play with Docker](https://labs.play-with-docker.com/) Labs
3. [Dockerfile reference](https://docs.docker.com/engine/reference/builder/)
4. Docker `run` [reference](https://docs.docker.com/engine/reference/run/)
   1. Docker [Network settings](https://docs.docker.com/engine/reference/run/#network-settings)
   2. Docker [Restart policies](https://docs.docker.com/engine/reference/run/#restart-policies---restart)
   3. Dockerfile [parameters](https://docs.docker.com/engine/reference/run/#overriding-dockerfile-image-defaults)
5. [Use the docker command line](https://docs.docker.com/engine/reference/commandline/cli/) reference
6. egghead.io [Docker Fundamentals](https://egghead.io/courses/docker-fundamentals-0cb53b55)
7. Docker [cheatsheet](https://github.com/wsargent/docker-cheat-sheet) - GitHub [wsargent](https://tersesystems.com/)
8. Docker Hub [mongo](https://hub.docker.com/_/mongo) reference
