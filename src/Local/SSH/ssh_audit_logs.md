# SSH Monitoring / Audit

Monitoring and Auditing SSH connection attempts

```
root@instance:~# vi /var/log/auth.log

Display most recent login attempts from all users
root@instance:~# lastlog

Display most recent login attempts from a specific users
root@instance:~# lastlog -u <username>

Lookup bash history file to see if there was an unauthorized access and what all was done
root@instance:~# vi ~/.bash_history
```
