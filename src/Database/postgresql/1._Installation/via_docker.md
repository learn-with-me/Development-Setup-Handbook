# Install via Docker

## Configuration yaml

```yaml
version: '3.6'
services:
  postgres:
    image: postgres:14.7
    restart: always
    ports:
    - "5432:5432"
    volumes:
    - db_data:/var/lib/postgresql/data
    environment:
      POSTGRES_PASSWORD: postgrespassword
volumes:
  db_data:
```

## Installation

Create the configuration yaml and run the following command:

```sh
# Start postgres server
$ docker-compose up -d

# Go to psql terminal
$ docker-compose exec <db_container_name> psql postgres <user>
$ docker-compose exec <db_container_name> psql -U <user>
```
