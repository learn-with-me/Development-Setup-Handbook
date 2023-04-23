# PostgreSQL

1. [Installation](./local-installation.md) (local)
2. Cheatsheet - [DB/Table Metrics](./tips/db-metrics.md)
3. Cheatsheet - [DB Troubleshooting](./tips/troubleshooting.md)
4. [Admin Commands](./administration/index.md)

## Configure to start automatically

```sh
$ mkdir -p ~/Library/LaunchAgents
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

> Note: if not installed via homebrew, it should looks like `com.postgresapp.Postgres2LoginHelper.plist`

## References

1. [Source Tutorial](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
2. http://www.postgresqltutorial.com/
3. Cheatsheet - https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546
