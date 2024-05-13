# Accessing the device remotely

> Assumption: Both devices are on the same network

## SSH

### SSH using credentials

```sh
# Command
$ ssh user@ip_address

# Example
$ ssh pi@192.168.0.1
```

### SSH using key-based authentication

To create your public and private SSH keys on the command-line:

```sh
mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa
```

Your public key is now available at `~/.ssh/id_rsa.pub`.

#### About passphrase

Your SSH key passphrase is only used to protect your private key from thieves. It's never transmitted over the Internet, and the strength of your key has nothing to do with the strength of your passphrase.

#### Transfer client key to host

```sh
ssh-copy-id <username>@<host>
```

#### Verifying access

```sh
ssh <username>@<host>
```

### Disable password authentication

Look for `sshd_config` file in the pi, and change the following line.

```sh
#PasswordAuthentication yes

to

PasswordAuthentication no
```

## Installing some dependencies

```sh
$ sudo apt install -y <package_1>  <package_2> . . .
```
