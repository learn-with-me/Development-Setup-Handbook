# MongoDB

MongoDB is a NoSQL database system which stores data in the form of `BSON` documents. MongoDB uses JSON-like documents with [schemata](https://en.wikipedia.org/wiki/Database_schema).

## Index

Refer the links below to get help on following topics.

* [Installation](./1._Installation/docker.md)
* [Cheatsheet](./2._Cheatsheet/)

## Running Service

```sh
# Run mongod
$ mongod
```

## Begin using MongoDB

```sh
$ mongo --host 127.0.0.1:27017
When you run mongo without any arguments, the mongo shell will attempt to connect to the MongoDB instance running on the
localhost interface on port 27017
--host command line option to specify the localhost address and port that the mongod listens on

User's Home should have a file .mongorc.js
mongo interprets the content of .mongorc.js before displaying the prompt for the first time.
```

## References

* [Performance Difference in Mongoose vs MongoDB Native Driver](https://bugwheels94.medium.com/performance-difference-in-mongoose-vs-mongodb-60be831c69ad)
