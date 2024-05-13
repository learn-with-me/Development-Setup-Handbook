# Docker Compose Configuration Cheatsheet

## Health Check

The `healthcheck` directive allows you to specify a command that Docker will run to check the health of your container.
If the command returns a non-zero code, Docker will consider the container to be unhealthy.

* Docker will run the `test` command to check the health of your container. In this case, we used the `cqlsh` command to describe the `keyspaces` in Cassandra.
* The `interval` setting specifies how often Docker should run the healthcheck command.
* The `timeout` setting specifies how long Docker should wait for the healthcheck command to complete.
* The `retries` setting specifies how many times Docker should run the healthcheck command before giving up and killing the container.

Example:

```yaml
healthcheck:
  test: [ "CMD", "cqlsh", "-e", "describe keyspaces" ]
  interval: 5s
  timeout: 5s
  retries: 60
```

## Restart Policy

This will ensure that your service automatically restarts if it crashes or if the Docker daemon restarts.

```yaml
restart: unless-stopped
restart: always
```

## Logging

Docker Compose supports logging configuration which can be useful for debugging and monitoring. You can specify a driver (json-file, syslog, etc.) and options depending on your needs.

```yaml
logging:
  driver: "json-file"
  options:
    max-size: "200k"
    max-file: "10"
```

The logging configuration is set to use the json-file driver and will rotate logs when they reach 200k in size, keeping a maximum of 10 log files.

## Resource Limits

Limit resources like CPU and memory. It's not strictly required, but it's better to have some limits.

```yaml
mem_limit: "${MEM_LIMIT}"
cpus: "${CPU_LIMIT}"
```

## Networking

`Bridge` driver is the default network driver for Docker, and it's used when you don't specify a driver. It provides a private network internal to the host so containers on this network can communicate.

```yaml
networks:
  my_network:
    driver: bridge
```

By default, all containers have networking enabled and they can make any outgoing connections. The operator can completely disable networking with `docker run --network none` which disables all incoming and outgoing networking. In cases like this, you would perform I/O through files or `STDIN` and `STDOUT` only.

## Update Strategy

For services that need to be updated with zero downtime, specify an update strategy.

```yaml
deploy:
  mode: replicated
  replicas: 1
  update_config:
    parallelism: 1
    delay: 10s
```

The update configuration ensures that updates are carried out one at a time with a delay of 10s between updates.
