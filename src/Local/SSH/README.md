# SSH for Remote Server Authentication

1. [Generate a new key](./ssh_keygen.md)
2. [Config file](./ssh_config_file.md)
3. [Copy SSH key to Remote server](./copy_ssh_key_to_remote_server.md)
4. [SSH into a machine](./ssh_into_a_machine.md)
5. [Verify Fingerprints](./ssh_verify_fingerprints.md)
6. [Copy files over SSH](./copy_files_over_ssh.md)
7. [Audit SSH logs](./ssh_audit_logs.md)
8. [Port forwarding with SSH tunnel](./port_forwarding_with_ssh_tunnel.md)
9. [Lock down incoming SSH connections](./lock_down_incoming_ssh_connections.md)

> Note:
>
> 1. Never share your private key with anyone. That's your identification
> 2. Feel free to share your public key with anyone or any server.
> 3. Last part of the content of public key is a comment to document which public key it is. Feel free to change it anytime. Comment is helpful in keeping track of servers using different keys.

#### SSH escape sequences and codes

Little known feature. These hidden sequences allow you to unstick a frozen terminal window, keep a remote SSH session open in the background, and more
```
Type ~(tilda) + .(period) to exit from a frozen terminal window

To keep an ssh connection open but not occupy the terminal window.
This will suspend ssh connection in the background
Type ~(tilda) + Ctrl z

To reconnect back to the suspended connection
$ fg
```

### Questions

```
1. How is userid/pwd different from ssh to the server as above?
```

## Resources
1. egghead.io [SSH for Remote Server Authentication](https://egghead.io/courses/ssh-for-remote-server-authentication)
2. 