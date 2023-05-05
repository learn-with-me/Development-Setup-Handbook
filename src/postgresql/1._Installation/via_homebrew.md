# Installation via Homebrew

The database will be initialized during installation, so there isn’t a need to run initdb

```sh
$ brew install postgres
```

> Here is a quick way of knowing if Postgres was installed via brew, brew initializes the database during installation by `postgres -D /usr/local/var/postgres` this creating the directory specified.

### Manage DB Service

```sh
# Starts as a background service
$ brew services start postgresql

# Stop the service manually
$ brew services stop postgresql

# Restart the service
$ brew services restart postgresql
```

### Uninstallation

```sh
# If installed via homebrew
$ brew remove postgresql
```
