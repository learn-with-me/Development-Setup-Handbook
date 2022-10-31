# MySQL

##### Installation

```
$ brew install mysql
```

##### Verification

```
$ mysql.server --help                      // See different commands available for mysql server
$ mysql.server status                      // Status of MySQL server
```

##### Commands

```
$ brew services start mysql                // To have launchd start MySQL now and restart at login
$ brew services stop mysql                 // To have launchd stop MySQL now and restart at login
$ mysql.server start                       // if you don't want a background service, just start MySQL server
$ mysql.server stop                        // Stop the MySQL server
$ mysql -u root                            // connect with the command-line client

$ mysqladmin -u root password 'new-password'        // Set a root password
$ brew cask install sequel-pro                      // Install a GUI client for MySQL
```



