# PostgreSQL

1. [Installation](./1._Installation/via_docker.md) (local)
2. Cheatsheet - [DB/Table Metrics](./3._tips/disk-usage.md)
3. Cheatsheet - [DB Troubleshooting](./3._tips/troubleshooting.md)
4. [Concepts](./2._concepts/index.md)

## Configure to start automatically

```sh
$ mkdir -p ~/Library/LaunchAgents
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

> Note: if not installed via homebrew, it should looks like `com.postgresapp.Postgres2LoginHelper.plist`

## References

1. [Postgres](https://www.postgresql.org/docs/current/functions-json.html) - Json functions | Official docs
2. [Safe and unsafe operations for high volume PostgreSQL](https://leopard.in.ua/2016/09/20/safe-and-unsafe-operations-postgresql)
3. [Source Tutorial](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
4. http://www.postgresqltutorial.com/
5. [Postgres Guide](https://www.postgresguide.com/tips/dates/) - tips on dates
6. Cheatsheet - https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546
