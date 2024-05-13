# Cassandra

##### Installation

```
Requires Java8+ and Python
$ java -version
$ python --version

Option 1
$ pip install cql            # Installs CQL. To use cqlsh, the Cassandra query language shell.
$ brew install cassandra     # Installs Apache Cassandra
```

##### Verification

```
$ cassandra -v               # Prints the installed version
```

##### Managing Service

```
$ cassandra -f         # Starts Cassandra server using non-daemon process, allowing to see output in terminal
$ cqlsh                # If the server is up, run this command to open CQL shell

OR

$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.cassandra.plist        # Start Cassandra
$ launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.cassandra.plist      # Stop Cassandra

If any of these commands fail, execute the following once
$ cp /usr/local/Cellar/cassandra/<version number>/homebrew.mxcl.cassandra.plist ~/Library/LaunchAgents/

File locations
==============
Properties:     /usr/local/etc/cassandra
Logs:           /usr/local/var/log/cassandra
Data:           /usr/local/var/lib/cassandra/data
```

##### Docs

```
http://cassandra.apache.org/doc/latest/
https://docs.datastax.com/en/cql/3.3/cql/cql_using/startCqlLinuxMac.html
```

##### References

```
https://gist.github.com/hkhamm/a9a2b45dd749e5d3b3ae
```
