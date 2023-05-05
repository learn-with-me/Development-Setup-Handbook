# Installing via Docker

## Download image

```sh
$ docker pull mongo
```

## Start an instance via Docker

```sh
$ docker run --name some-mongo -d mongo:tag
```

## Start an instance via Docker-Compose

```yaml
# Use root/example as user/password credentials
version: '3.1'

services:
  mongo:
    image: mongo
    restart: always
    environment:
      MONGO_INITDB_ROOT_USERNAME: root
      MONGO_INITDB_ROOT_PASSWORD: example

  mongo-express:
    image: mongo-express
    restart: always
    ports:
      - 8081:8081
    environment:
      ME_CONFIG_MONGODB_ADMINUSERNAME: root
      ME_CONFIG_MONGODB_ADMINPASSWORD: example
      ME_CONFIG_MONGODB_URL: mongodb://root:example@mongo:27017/
```

## References

* [Mongo](https://hub.docker.com/_/mongo) | Docker Hub
* [Docker and MongoDB](https://www.mongodb.com/compatibility/docker) | MongoDB
