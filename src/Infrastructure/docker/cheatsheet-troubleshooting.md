# Troubleshooting

```sh
# stats for all running containers
$ docker stats

# output a JSON object that describes the configuration of the container
$ docker inspect $CONTAINER

# Get hash for the image
docker inspect --format='{{index .RepoDigests 0}}' $IMAGE
```
