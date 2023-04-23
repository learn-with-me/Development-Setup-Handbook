# Postgres CLI Installation

Spinning up a container using Docker would be a preferred approach.
Following instructions are helpful only if the intent is to install postgres server locally.

## Installation

### via Homebrew:

The database will be initialized during installation, so there isn’t a need to run initdb

```
$ brew install postgres
```

> Here is a quick way of knowing if Postgres was installed via brew, brew initializes the database during installation by `postgres -D /usr/local/var/postgres` this creating the directory specified.

### via Native App

Download and install from http://postgresapp.com/
A native macOS app that runs in the menubar without the need of an installer.

(Another graphical installer alternative: https://www.bigsql.org/postgresql/installers.jsp)

```sh
# Configure PATH
sudo mkdir -p /etc/paths.d &&
    echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp

# OR
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
```

> Note: If you are going to use the app, it is recommended to uninstall other PostgreSQL installations due to port conflicts.

## Verification

```sh
# Verify if the app is installed already
$ which postgres

# Display installed Postgres version
$ postgres --version

# Verify if the app is installed already
$ which psql

# Open psql command line, if installed correctly
$ psql -h localhost
```

## Manage DB Service

If installed via Homebrew:

```sh
# Starts as a background service
$ brew services start postgresql

# Stop the service manually
$ brew services stop postgresql

# Restart the service
$ brew services restart postgresql
```

pg_ctl is a utility to initialize, start, stop, or control a PostgreSQL server.

```sh
# Display command options
$ pg_ctl --help
```

## Uninstallation

```sh
# If installed via homebrew
$ brew remove postgresql


# If installed via app

Removing app from Applications folder will be good enough. Just clean the PATH as well.
```
