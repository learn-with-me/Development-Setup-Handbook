# Installing via Homebrew (MacOS)

## Install

Download and install from [here](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/), or follow directions below

```sh
$ brew tap mongodb/brew
$ brew install mongodb-community
```

Once installation is finished, you should see something like below:

```sh
To start mongodb/brew/mongodb-community now and restart at login:
  brew services start mongodb/brew/mongodb-community

Or, if you don't want/need a background service you can just run:
  mongod --config /usr/local/etc/mongod.conf
```

## Start/Stop Service

```sh
# Start the database
$ brew services start mongodb-community
or
$ mongod

# Stop the database
brew services stop mongodb-community
```

## Verify version

```sh
# Show current mongod version
$ mongod --version

# Show current mongosh version
$ mongosh --version
```

## Test connection

```sh
# To test the connection with the database, run below
$ mongosh "mongodb://localhost:27017"

# Explore all other database tools here:
# https://www.mongodb.com/docs/database-tools/
# or
# https://github.com/mongodb/homebrew-brew
```

## Write Directory

### Configurations

MongoDB stores system level configurations in `/usr/local/etc/mongod.conf` file.

You won't need any changes here to get started. However, if you need to make some changes, make sure to restart the service, for it to pick up the changes.

### Default Directory

The default location for `dbPath` is `/usr/local/var/mongodb`.
To use a custom path, update this path in `mongod.conf` file.

## References

* [MongoDB Shell](https://www.mongodb.com/docs/mongodb-shell/connect/) | MongoDB
* [mongodb/homebrew-brew](https://github.com/mongodb/homebrew-brew) | GitHub
