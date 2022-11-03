# SSH into a machine

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
