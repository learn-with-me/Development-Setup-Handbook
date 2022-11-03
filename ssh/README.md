# SSH for Remote Server Authentication

1. [Generate a new key](./ssh_keygen.md)
2. [Config file](./ssh_config_file.md)
3. [SSH into a machine](./ssh_into_a_machine.md)
4. [Verify Fingerprints](./ssh_verify_fingerprints.md)
5. [Audit SSH logs](./ssh_audit_logs.md)

> Note:
>
> 1. Never share your private key with anyone. That's your identification
> 2. Feel free to share your public key with anyone or any server.
> 3. Last part of the content of public key is a comment to document which public key it is. Feel free to change it anytime. Comment is helpful in keeping track of servers using different keys.

#### Copy an SSH key to a remote server

```
$ ssh-copy-id root@104.105.103.102
You'll be asked for password most likely and then you're all set.

Test if your key was copied to the server
$ ssh root@104.105.103.102

Once you ssh into the server, look at your key by:
root@instance:~# vi ~/.ssh/authorized_keys

This file contains a list of public ssh keys, which have been granted access for authentication.
The key you copied from your local machine should be in here.
To allow another user to authenticate into the server, just add their public SSH key into this file.
```

#### Securely copy files remotely over SSH

```
Copy file to host machine
$ scp <file> <user>@<host>:<location>
$ scp foo.txt root@104.105.103.102:~/

Copy folder to host machine (recursive copy)
$ scp <folder> <user>@<host>:<location>
$ scp -r some-folder root@104.105.103.102:~/

Note: You can use -i and -P flags here as well
Alert: the port flag in this case is UPPERCASE

Copy file from host machine
$ scp <user>@<host>:<file_path> <destination_folder>
$ scp root@104.105.103.102:~/foo.txt ./foo.txt
```

#### Configure local and remote port forwarding with an SSH tunnel

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

#### SSH escape sequences and codes

Little known feature. These hidden sequences allow you to unstick a frozen terminal window, keep a remote SSH session open in the background, and more

#### Modify server configuration to lock down incoming SSH connections

```
root@instance:~# vi /etc/ssh/sshd_config

Disable the ability to login as a root user by changing the following value
PermitRootLogin no

Disable the ability to login as a root user by using password. And able to login using SSH keys
PermitRootLogin prohibit-password

Completely disable password authentication on the server by changing the following value
PasswordAuthentication no

Only allow specific users to be able to SSH into the server
AllowUsers foo bar@1.2.3.4 *@1.2.3.4
This allows specific users, user from a specific IP address or all users coming in from specific IP address

Now restart the SSH service
root@instance:~# service ssh restart
```

### Questions

```
1. How is userid/pwd different from ssh to the server as above?
```



