# Neo4j

##### Installation

```
Download and install from http://neo4j.com/download/
```

##### Docker

```
Running Neo4j in a Docker container

By default the Docker image exposes three ports for remote access:
• 7474 for HTTP
• 7473 for HTTPS
• 7687 for Bolt

It also exposes two volumes:
• /data to allow the database to be persisted outside its container.
• /logs to allow access to Neo4j log files.

docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$HOME/neo4j/data:/data \
    --volume=$HOME/neo4j/logs:/logs \
    neo4j:3.3
```

##### References

```
https://neo4j.com/docs/operations-manual/current/configuration/file-locations/
```



