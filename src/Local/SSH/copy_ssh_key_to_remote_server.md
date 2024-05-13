# Copy an SSH key to a remote server

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
