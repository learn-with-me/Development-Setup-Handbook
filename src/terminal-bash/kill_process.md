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

To find the process running on port:

```sh
$ netstat -vanp tcp | grep 3000

# In case netstat is not supported
$ lsof -i tcp:3000
```
