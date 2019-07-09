# SSH for Remote Server Authentication

#### Generate new SSH public/private key pair

```
Most common way
$ ssh-keygen

Key pair will be generated in the following location
~/.ssh

File names
Private key - id_rsa
Public key  - id_rsa.pub
```

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

#### Advanced SSH into a machine

If you try to SSH into a machine by using SSH command without user-name, the command assumes the name same as the host machine name, which in a lot of cases is not desired.

Sometimes for security reasons, some server block connections to the default port 22 and bind the ssh server to a different port.

```
SSH into a server using a different port 2022
$ ssh -p 2022 root@104.105.103.102

SSH into a server using a different identity and not the default id_rsa file
$ ssh -i ~/.ssh/another_key root@104.105.103.102

SSH, Run a command and Exit
$ ssh root@104.105.103.102 <command>
$ ssh root@104.105.103.102 hostname
```

#### SSH config files

Simplifies SSH connection by storing the intricate details surrounding the SSH connection. _Fields are optional not required_.

```
Create a config file
$ vi ~/.ssh/config
```

Content of config file

```
Host 104.105.103.102

OR

Host prod-instance
    HostName 104.105.103.102
    User root
    IdentityFile ~/.ssh/id_rsa
    Port 22
```

SSH into the server configured in config file

```
$ ssh prod-instance
So much easier!!
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
$ ssh -L <local>:<host>:<remote>
$ ssh -L 8000:yahoo.com:80

local  - local port you wish to use as a tunnel
host   - website or host you wish to access
remote - port you wish to connect to of the host
```

#### Questions

```
1. How is userid/pwd different from ssh to the server as above?

```



