# SSH into a machine

Use this command to ssh into a remote/local machine.

```sh
# SSH into a server with a user name
$ ssh root@104.105.103.102
$ ssh root@host.com
```

> Note: If you try to SSH into a machine by using SSH command without `username`, the command assumes the name same as the host machine name, which is not desired in a lot of cases.

## Port access

Sometimes for security reasons, some server block connections to the default port 22 and bind the ssh server to a different port.

```sh
# SSH into a server using a different port 2022
$ ssh -p 2022 root@104.105.103.102
```

## Using identity

Using different identity instead of default one

```sh
# SSH into a server using a different identity and not the default id_rsa file
$ ssh -i ~/.ssh/another_key root@104.105.103.102
```

## Executing a command remotely

```sh
# SSH, Run a command and Exit
$ ssh root@104.105.103.102 <command>
$ ssh root@104.105.103.102 hostname
```
