# Postgres Database Server

## Connection String

Connection String is built off of following parameters:

```sh
POSTGRES_USER = postgres
POSTGRES_PASSWORD = postgrespassword
POSTGRES_HOST = host.docker.internal
POSTGRES_PORT = 5432
POSTGRES_DATABASE = postgres
```

> Note: Host for mac is `host.docker.internal`

There are two formats which are widely used:

```sh
# plain keyword/value strings
host=localhost port=5432 dbname=mydb connect_timeout=10

# Connection URIs
postgresql://username:password@host:port/dbname[?paramspec]
postgresql://postgres:postgrespassword@host.docker.internal:5432/postgres
```

## PostgreSQL Clients

Some of the popular client applications for PostgreSQL include

* `pg_dump` - Extracting database into a file
* `pg_restore` - Restoring a database from a file
* `create_db` - Create a new PostgreSQL database
* `create_user` - Create a new PostgreSQL user account
* `psql` - Interactive terminal

A full list of client applications is available [here](https://www.postgresql.org/docs/current/reference-client.html)

## Command line utilities

Instead of logging into psql, executing SQL queries, and needing to know the details of the query statements, you can use a familiar command line interface to do the same tasks.

```sh
$ createuser            # creates a user
$ createdb              # creates a database
$ dropuser              # deletes a user
$ dropdb                # deletes a database
$ postgres              # executes the SQL server itself
$ pg_dump               # dumps the contents of a single database to a file
$ pg_dumpall            # dumps all databases to a file
$ psql                  # Lets you carry administrative functions without needing to know their actual SQL commands
$ initdb                # initialize a PostgreSQL data directory
```

### psql

`psql` is an interactive terminal, we can use to execute commands, SQL statements and control the database as a whole.

This utility is installed with Postgres that lets you carry out administrative functions without needing to know their actual SQL commands. By default, Postgres automatically creates the user `postgres`. It also creates user for the account you are logged in.
