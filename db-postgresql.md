# PostgreSQL

> **Source:** https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx
>
> **Docs:**  
> https://www.postgresql.org/docs/9.5/static/sql-createrole.html  
> https://www.postgresql.org/docs/9.5/static/sql-alterrole.html  
> https://www.postgresql.org/docs/9.5/static/reference-client.html

##### Installation

```
Option 1:
=========
Download and install from http://postgresapp.com/
A native macOS app that runs in the menubar without the need of an installer.
(Another graphical installer alternative: https://www.bigsql.org/postgresql/installers.jsp)

# Configure PATH
sudo mkdir -p /etc/paths.d &&
    echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
OR
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

If you are going to use the app, it is recommended to uninstall other PostgreSQL installations due to port conflicts.

Option 2:
=========
$ brew install postgres
The database will be initialized during installation, so there isn’t a need to run initdb
```

##### Uninstallation

```
Option 1:
Removing app from Applications folder will be good enough. Just clean the PATH as well.

Option 2:
$ brew remove postgresql
```

##### Verification

```
$ which postgres        # Verify if the app is installed already
$ postgres --version    # Display installed Postgres version

$ which psql            # Verify if the app is installed already
$ psql -h localhost     # Open psql command line, if installed correctly
```

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
$ psql                  # we recognize that one!
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

Creation new user
> CREATE ROLE admin WITH LOGIN PASSWORD 'admin'
> ALTER ROLE admin CREATEDB

Creation new user: Shortened version
> createuser admin --createdb

Creating database
> CREATE DATABASE databasename;
> CREATE DATABASE super_awesome_application;

Once a database is created, you need to add at least one user who has permission to access the database (aside from the
super users, who can access everything).
> GRANT ALL PRIVILEGES ON DATABASE super_awesome_application TO <user>;
> GRANT ALL PRIVILEGES ON DATABASE super_awesome_application TO admin;
> \list                       // Lists all the databases in Postgres
> \connect <database_name>    // Connect to a specific database
> \dt                         // List the tables in the currently connected database

```

##### Manage DB Service

```
$ brew services start postgresql    # Starts as a background service
$ brew services stop postgresql     # Stop the service manually
$ brew services restart postgresql  # Restart the service

pg_ctl is a utility to initialize, start, stop, or control a PostgreSQL server.
$ pg_ctl --help                     # Display command options
```



