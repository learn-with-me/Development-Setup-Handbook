# Cheatsheet

> **Docs:**  
> [https://www.postgresql.org/docs/9.5/static/sql-createrole.html](https://www.postgresql.org/docs/9.5/static/sql-createrole.html)  
> [https://www.postgresql.org/docs/9.5/static/sql-alterrole.html](https://www.postgresql.org/docs/9.5/static/sql-alterrole.html)  
> [https://www.postgresql.org/docs/9.5/static/reference-client.html](https://www.postgresql.org/docs/9.5/static/reference-client.html)

##### Command line utilities

```
Instead of logging into psql, executing SQL queries, and needing to know the details of the query statements, you can
use a familiar command line interface to do the same tasks.

$ createuser            # creates a user
$ createdb              # creates a database
$ dropuser              # deletes a user
$ dropdb                # deletes a database
$ postgres              # executes the SQL server itself
$ pg_dump               # dumps the contents of a single database to a file
$ pg_dumpall            # dumps all databases to a file
$ psql                  # Lets you carry administrative functions without needing to know their actual
                          SQL commands
$ initdb                # initialize a PostgreSQL data directory
```

##### Configuration

    `psql` is a utility installed with Postgres that lets you carry out administrative functions without needing to know
    their actual SQL commands. By default, Postgres automatically creates the user postgres. It also creates user for the
    account you are logged in.

    $ psql postgres                // Logs into psql command line
    $ psql postgres -U <username>  // Login with a username (not the default one)

##### psql Commands

```
> \du            # Displays a list of users installed by running a query internally
> \q             # Quits the postgres console

Setting password
> \password <role>        # It'll ask you to enter the password
> \password postgres
```

##### Creating a new user

```
> CREATE ROLE admin WITH LOGIN PASSWORD 'admin'
> ALTER ROLE admin CREATEDB
OR
> createuser admin --createdb
```

##### Create a new Database

```
> CREATE DATABASE databasename;
> CREATE DATABASE super_awesome_application;
OR
> createdb super_awesome_application -U admin

Once a database is created, you need to add at least one user who has permission to access the database (aside from the
super users, who can access everything).
> GRANT ALL PRIVILEGES ON DATABASE super_awesome_application TO <user>;
> GRANT ALL PRIVILEGES ON DATABASE super_awesome_application TO admin;
> \list                       // Lists all the databases in Postgres
> \connect <database_name>    // Connect to a specific database
> \dt                         // List the tables in the currently connected database

Rename a database
> ALTER DATABASE super_awesome_application RENAME TO even_more_awesome_application;
```



