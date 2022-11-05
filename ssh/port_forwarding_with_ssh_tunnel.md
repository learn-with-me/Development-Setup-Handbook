# Configure local and remote port forwarding with an SSH tunnel

Let's say you are on a network connection which is blocking access to a specific website. You can easily get around this with an SSH tunnel and local port forwarding. This allows you to bypass intranet firewalls and setup persistent connections between your local host machine and a remote server.

```
$ ssh -L <local>:<host>:<remote> <user>@<machine>
$ ssh -L 8000:yahoo.com:80 root@104.105.103.102
$ ssh -f -N -L 8000:yahoo.com:80 root@104.105.103.102

local   - local port you wish to use as a tunnel
host    - website or host you wish to access
remote  - port you wish to connect to of the host
machine - ip of the machine acting as a tunnel
-f flag - tells the command to run in background
-N flag - does not open a shell window

Note: This works when one or few hosts are blocked, not everything

You can look up the process if its actually running
$ ps aux | grep ssh

Kill the tunnel by
$ kill <process_id>
```

Forward remote ports. This will forward remote connections back to our local host machine. Useful when the user wants to access their local host machine.

```
Note: Remote port forwarding is disabled on SSH service by default 

Enable Remote port forwarding on host
root@instance:~# vi /etc/ssh/sshd_config

In the file, set the GatewayPorts to yes
GatewayPorts yes

Now restart the SSH service
root@instance:~# service ssh restart

Back to your local machine terminal
$ ssh -R <remote>:<listerner_ip>:<local> <connection_string>
$ ssh -R 8000:localhost:3000 root@104.105.103.102

remote - port you wish to listen to on the remote host
local  - port that the requests should be forwarded to
```
