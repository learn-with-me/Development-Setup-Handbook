# Check and Verify SSH fingerprints

Once you SSH into a remote server, server fingerprint and key are added to ~/.ssh/known\_hosts file. This file contains a list of remote servers you've connected to in the past. File ensures that you are connected to the correct server and not a fake impersonator.

If you try connecting to a remote host with an IP previously assigned to another machine, you'll get a host mismatch error. This is because the remote host fingerprint does not match to your known\_hosts file.

```
Find the remote host fingerprint on server
$ ssh root@104.105.103.102
root@instance:~# ssh-keygen -l -f /etc/ssh/ssh_host_ecdsa_key.pub

-l - tells the keygen that we want the fingerprint
-f - tell the keygen where to find the public key

Remove all the keys related to a remote host machine
$ ssh-keygen -R 104.105.103.102

Find the remote host fingerprint on local machine
$ ssh root@104.105.103.102

With first time connections, the server shows its fingerprint. Match this to the one you found on the server
```
