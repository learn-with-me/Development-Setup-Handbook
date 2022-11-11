# PostgreSQL

1. [Installation](./local-installation.md) (local)
2. Cheatsheet - [DB/Table Metrics](./tips/db-metrics.md)
3. Cheatsheet - [DB Troubleshooting](./tips/troubleshooting.md)
4. [Admin Commands](./admin-stuff.md)

##### Popular GUI

```
Postico - https://eggerapps.at/postico/
Modern PostgreSQL client for Mac

Psequel - http://www.psequel.com/

pgAdmin - https://www.pgadmin.org/
Most popular and feature rich Open Source administration and development platform for PostgreSQL.
Designed to run on both client machines and on deployed servers, pgAdmin is capable of handling advanced
cases that Postico cannot.
https://www.pgadmin.org/docs/pgadmin4/dev/index.html
```

##### Configure to start automatically

    $ mkdir -p ~/Library/LaunchAgents
    $ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
    $ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

    if not installed via homebrew, it should looks like `com.postgresapp.Postgres2LoginHelper.plist`

## References

1. [Source Tutorial](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
2. http://www.postgresqltutorial.com/
3. Cheatsheet - https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546
