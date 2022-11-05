# SSH into a machine

```
SSH into a server
$ ssh 104.105.103.102
$ ssh host.com
```

If you try to SSH into a machine by using SSH command without user-name, the command assumes the name same as the host machine name, which in a lot of cases is not desired.
```
SSH into a server with a user name
$ ssh root@104.105.103.102
```

Sometimes for security reasons, some server block connections to the default port 22 and bind the ssh server to a different port.
```
SSH into a server using a different port 2022
$ ssh -p 2022 root@104.105.103.102
```

Using different identity instead of default one
```
SSH into a server using a different identity and not the default id_rsa file
$ ssh -i ~/.ssh/another_key root@104.105.103.102
```

Executing a command remotely
```
SSH, Run a command and Exit
$ ssh root@104.105.103.102 <command>
$ ssh root@104.105.103.102 hostname
```
