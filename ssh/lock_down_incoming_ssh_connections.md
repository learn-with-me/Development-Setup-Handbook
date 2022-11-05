# Modify server configuration to lock down incoming SSH connections

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
