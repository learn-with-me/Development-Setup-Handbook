# Installation via Native app

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

### Uninstallation

Removing app from Applications folder will be good enough. Just clean the PATH as well.
