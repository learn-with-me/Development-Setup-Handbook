# MongoDB

Go to the links below to get help on following topics.

* [Installation](./01_installation.md)
* [Cheatsheet](./02_cheatsheet.md)

## Running Service

```sh
# Run MongoD
$ mongod

Begin using MongoDB
$ mongo --host 127.0.0.1:27017
When you run mongo without any arguments, the mongo shell will attempt to connect to the MongoDB instance running on the
localhost interface on port 27017
--host command line option to specify the localhost address and port that the mongod listens on

User's Home should have a file .mongorc.js
mongo interprets the content of .mongorc.js before displaying the prompt for the first time.
```

##### MongoDB Compass

```
Download and install Compass from the following link or google your way through
https://www.mongodb.com/download-center?filter=enterprise#compass
```

##### MongoDB Atlas

```
MongoDB as a service. There is no local setup.
You can access the service at the url below after you login.
https://cloud.mongodb.com
```



