# Cheatsheet - System Health

## System Internals

```sh
# Space left on hard drive
$ df -h

# Processes
$ ps
$ ps -ax

# Find which processes are using the most cpu realtime
$ top

# Find which processes are using the most memory realtime
$ top -o rsize

# Kill a running process
$ ps -ax | grep <name>
$ kill -9 <process_id>

# How long has the mac been up?
$ uptime
```
