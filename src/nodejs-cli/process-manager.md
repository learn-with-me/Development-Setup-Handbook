# Node.js Process Manager

The most challenging aspect when it comes to maintaining an application is keeping it alive and running. Additionally with Node.js, scaling a single threaded process can be hard to do; that’s where Process managers comes in.

#### Process Managers out there

* PM2
* SystemD - [https://en.wikipedia.org/wiki/Systemd](https://en.wikipedia.org/wiki/Systemd)
* Forever - [https://github.com/foreverjs/forever](https://github.com/foreverjs/forever)
* StrongLoop's Process Manager - [http://strong-pm.io/](http://strong-pm.io/)

#### PM2

PM2 is a battle tested, production ready runtime and process manager for Node.js applications. It comes with a built-in load balancer, as well, which makes scaling applications even easier. Best of all, it works on Linux, Windows, and macOS. You specify the process.json file and PM2 takes care of the rest.

What all of this means is that PM2 allows you to keep your Node.js applications alive forever, and to reload them with zero downtime when you have updates to your application or server.

##### Cheatsheet - Process Management

```
$ pm2 start process_prod.json  # Start process(es) via process JSON file
$ pm2 ls                       # Show a list of all applications
$ pm2 stop <app>               # Stops a specific application
$ pm2 start <app>              # Starts a specific application
$ pm2 start <app> --watch      # Starts a specific application with watch enabled
$ pm2 delete <app>             # stop and delete a process from the list
$ pm2 kill                     # Kills all running applications
$ pm2 restart                  # Restarts all running applications. App is unavailable for a short time
$ pm2 reload                   # Reloads the app configuration (handy when you modify env variables)
$ pm2 <app> scale N            # Scales the application to N number of instances (up or down)
$ pm2 serve <path> <port>      # serve static files (like a frontend app) over HTTP
```

##### Cheatsheet - Stats

```
$ pm2 show <id/name>        # to get more details about an app
$ pm2 describe <id/name>        # same as above
$ pm2 env <id/name>         # to display environement variables
$ pm2 monit                 # to monitor CPU and Memory usage server
```

##### Cheatsheet - Log management

```
$ pm2 logs             # Outputs logs from all running applications
$ pm2 logs <app>       # Outputs logs from only the app application
$ pm2 flush            # Flushes all log data, freeing up disk space

PM2 Modules
$ pm2 install pm2-logrotate    # enable log rotation
$ pm2 install pm2-server-monit # monitor the current server with more than 20+ metrics and 8 actions
```

##### Cheatsheet - Tips

```
$ pm2 completion install    # By default, CLI autocompletion is not installed with PM2
$ pm2 reload all            # Zero downtime reload. Hot Reload allows to update an app without any downtime
$ pm2 update                # Keep pm2 updated
```

##### Cheatsheet - Cluster Mode

```
In the context of clustering, you first need to be sure that your application has no internal state.
An internal state is typically some local data stored into its processes.
It can be an array of websocket connections or a local session-memory for example.
Use Redis or other databases instead to share the states between processes.

$ pm2 start api.js -i <processes>    # Starting an app in cluster mode that'll leverage all CPUs available
$ pm2 start api.js -i max            # PM2 will auto-detect number of available CPUs & run as many processes
```

##### Cheatsheet - Startup hooks generation

```
$ pm2 startup      # Generate Startup Script
$ pm2 save         # Freeze your process list across server restart
$ pm2 unstartup    # Remove Startup Script
```

##### Cheatsheet - EcoSystem File

    Purpose of the ecosystem file is to gather all options and environment variables for all your applications

    $ pm2 init                    # Generate an ecosystem.config.js template

    $ pm2 start ecosystem.config.js                     # uses variables from `env`
    $ pm2 start ecosystem.config.js --env production    # uses variables from `env_production`
    $ pm2 start --only <app_name>    # Use ecosystem file only on a specific application

    $ pm2 restart ecosystem.config.js --update-env      # force refresh the environment

#### References

```
https://www.npmjs.com/package/pm2
https://hackernoon.com/running-pm2-node-js-in-production-environments-13e703fc108a
https://pm2.io/doc/en/runtime/overview/
https://pm2.io/doc/en/runtime/guide/log-management/
https://pm2.io/doc/en/runtime/guide/startup-hook/
```
