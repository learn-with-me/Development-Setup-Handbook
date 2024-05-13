# Securely copy files remotely over SSH

```
Copy file to host machine
$ scp <file> <user>@<host>:<location>
$ scp foo.txt root@104.105.103.102:~/

Copy folder to host machine (recursive copy)
$ scp <folder> <user>@<host>:<location>
$ scp -r some-folder root@104.105.103.102:~/

Note: You can use -i and -P flags here as well
Alert: the port flag in this case is UPPERCASE

Copy file from host machine
$ scp <user>@<host>:<file_path> <destination_folder>
$ scp root@104.105.103.102:~/foo.txt ./foo.txt
```
