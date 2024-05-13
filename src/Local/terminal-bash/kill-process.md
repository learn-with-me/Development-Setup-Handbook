---
tags:
  - terminal
---

# Kill a running process

If you know the port already:

```sh
$ kill -9 $(lsof -ti:<port>)
$ kill -9 $(lsof -ti:8080)
```

## Finding the process

To find the process running on port:

```sh
# Find process id of a program running on port 3000
$ lsof -i tcp:3000

# Find process id of a program listening on port 8080
$ lsof -i :8080 | grep LISTEN
```

## Finding the command running

```sh
# Find the command running on PID
$ ps -ef <PID>
$ ps -ef 42975
```

## Kill the process

```sh
# Kill the process by PID
$ kill -9 <PID>
```

## Using netstat

```sh
$ netstat -vanp tcp | grep 3000
```
