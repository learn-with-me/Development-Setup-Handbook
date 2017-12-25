# PostgreSQL

> **Source:** [https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)

##### Installation

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

##### Manage DB Service

```
$ brew services start postgresql    # Starts as a background service
$ brew services stop postgresql     # Stop the service manually
$ brew services restart postgresql  # Restart the service

pg_ctl is a utility to initialize, start, stop, or control a PostgreSQL server.
$ pg_ctl --help                     # Display command options
```

##### Popular GUI

```
Postico - https://eggerapps.at/postico/
Modern PostgreSQL client for Mac

pgAdmin - https://www.pgadmin.org/
Most popular and feature rich Open Source administration and development platform for PostgreSQL. Designed to run on
both client machines and on deployed servers, pgAdmin is capable of handling advanced cases that Postico cannot.
https://www.pgadmin.org/docs/pgadmin4/dev/index.html
```

##### Configure to start automatically

    $ mkdir -p ~/Library/LaunchAgents
    $ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
    $ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

    if not installed via homebrew, it should looks like `com.postgresapp.Postgres2LoginHelper.plist`



