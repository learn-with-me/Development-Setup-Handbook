# Nginx with Persistent Volume

### Spinning up nginx without volume

```
$ docker run -p 8080:80 --name web --rm nginx

Go to http://localhost:8080 to view the default page.
Once you exit the container, it'll be deleted because of --rm flag
```

### Modify the default file

```sh
$ vi index.html

# web because that's the container name
$ docker cp index.html web:/usr/share/nginx/html
```

### Persisting your changes

From the last example, if we stop and start the container again, our `index.html` changes will be lost since they are not persistent. This can be solved by attaching a volume to it. Run the below command instead:

```sh
$ docker run -p 8080:80 --name web --rm -v web:/usr/share/nginx/html nginx

# Here the name web after option -v is the name of the volume.
# Path following colon(:) is the directory we want to be persistent.

# Now copy the index.html
```

### Persisting from Host Machine

Very similar to the last option.
Instead of specifying the name of the volume, we specify the directory on host.

```sh
$ docker run -p 8080:80 --name web --rm -v $PWD:/usr/share/nginx/html nginx

# Notice that the volume name "web" is replaced by whatever PWD (current directory) is.
# Also note that the container does not need to be restarted for updates to show.
```
