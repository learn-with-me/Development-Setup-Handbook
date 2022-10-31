# Neo4j

##### Installation

```
Download and install from http://neo4j.com/download/

FYI... to play around, you can start a sandbox online
https://neo4j.com/sandbox-v2/
```

##### Driver Installation

```
Maven
=====
<dependencies>
    <dependency>
        <groupId>org.neo4j.driver</groupId>
        <artifactId>neo4j-java-driver</artifactId>
        <version>1.5.0-beta03</version>
    </dependency>
</dependencies>

Node
====
> npm show neo4j-driver@* version        // Display a list of available driver versions
> npm install neo4j-driver               // Install the latest version or one of the available versions

Python
======
> pip install neo4j-driver

https://neo4j.com/docs/developer-manual/current/drivers/get-started/
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

##### Docs

```
https://neo4j.com/docs/api/javascript-driver/1.5/
https://neo4j.com/docs/api/java-driver/1.5-preview/
https://neo4j.com/docs/api/python-driver/1.5/

```

##### References

```
https://neo4j.com/docs/operations-manual/current/configuration/file-locations/
https://neo4j.com/download/other-releases/
```



