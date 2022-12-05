# Postgres CLI Installation

Spinning up a container using Docker would be a preferred approach.
Following instructions are helpful only if the intent is to install postgres server locally.

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

    Here is a quick way of knowing if Postgres was installed via brew, brew initializes the database during installation
    by `postgres -D /usr/local/var/postgres` this creating this directory `/usr/local/var/postgres`

## Verification

```
$ which postgres        # Verify if the app is installed already
$ postgres --version    # Display installed Postgres version

$ which psql            # Verify if the app is installed already
$ psql -h localhost     # Open psql command line, if installed correctly
```

##### Manage DB Service

```
If installed via Homebrew
$ brew services start postgresql    # Starts as a background service
$ brew services stop postgresql     # Stop the service manually
$ brew services restart postgresql  # Restart the service

pg_ctl is a utility to initialize, start, stop, or control a PostgreSQL server.
$ pg_ctl --help                     # Display command options
```

## Uninstallation

```
Option 1:
Removing app from Applications folder will be good enough. Just clean the PATH as well.

Option 2:
$ brew remove postgresql
```
