# SSH config file

Simplifies SSH connection by storing the intricate details surrounding the SSH connection. _Fields are optional not required_.

```sh
# Create a config file
$ vi ~/.ssh/config
```

Content of config file

```sh
Host 104.105.103.102

OR

Host prod-instance
    HostName 104.105.103.102
    User root
    IdentityFile ~/.ssh/id_rsa
    Port 22
```

SSH into the server configured in config file

```sh
$ ssh prod-instance

# So much easier!!
```
