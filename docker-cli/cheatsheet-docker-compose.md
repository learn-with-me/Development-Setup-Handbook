# Docker Compose Cheatsheet

```shell
$ docker-compose up -d
$ docker-compose down --remove-orphans
$ docker-compose down --remove-orphans -v

$ docker-compose logs --tail="all" <container_name>
$ docker-compose logs -f <container_name>

$ docker-compose exec <db_container_name> psql postgres <user>
$ docker-compose exec -it <container_name> bash

$ docker prune <something>
```
