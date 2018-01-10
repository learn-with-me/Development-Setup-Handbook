# MongoDB

##### Installation

```
Option 1
Download and install from https://www.mongodb.com/download-center#community

Option 2
$ brew install mongodb
```

##### Verification

```
$ mongod --version        # Primary daemon process for the MongoDB system
It handles data requests, manages data access, and performs background management operations.

$ mongo --version         # Interactive JavaScript shell interface to MongoDB
Provides a powerful interface for systems administrators as well as a way for developers to test queries and operations
directly with the database. Also provides a fully functional JavaScript environment for use with a MongoDB.
```

##### Execution

```
$ mkdir -p /data/db            # Create the directory to which the mongod process will write data
By default, the mongod process uses the /data/db. If you create a directory other than this one, you must specify that
directory in the dbpath option when starting the mongod process.

$ sudo chmod a+rw /data/db     # Set read and write permissions for the data directory
$ mongod                       # Run MongoD

Begin using MongoDB
$ mongo --host 127.0.0.1:27017
When you run mongo without any arguments, the mongo shell will attempt to connect to the MongoDB instance running on the
localhost interface on port 27017
--host command line option to specify the localhost address and port that the mongod listens on

User's Home should have a file .mongorc.js
mongo interprets the content of .mongorc.js before displaying the prompt for the first time.
```

##### mongo shell

```
> db                    # Displays the database you are using
> show dbs              # List available databases
> use <database>        # Switch database. This creates a new DB if it does not exist

Creates collection myCollection and inserts data
> db.myCollection.insertOne( { x: 1 } );

Other Commands
> db.getCollection("myCollection")
> db.getCollection("myCollection").find()        # same as db.myCollection.find()
> quit()                                         # Exit the shell
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



