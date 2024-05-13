# Common Commands

### Pipes

Pipes pass output of one command to the next command

```sh
$ uglify -c -m -- index.js | gzip -9 | wc -c

uglify    # npm module installed globally
-c        # compress file
-m        # minify file
-9        # Compress to maximum
-c        # Return byte count instead of word count
```

### Fun commands

```sh
# Make computer say something
$ say something

# Find current wifi password (require admin credentials)
$ security find-generic-password -wa <wifi_name>

# Copy the output of any command on clipboard
$ <command> | pbcopy

# Keep mac awake as long as terminal is up. Press ctrl + c to stop.
$ caffeinate

# Change password
# Do not forget to update keychain password, with the command from the result
$ passwd

# Copy files. Alternative to cp
$ ditto source_file destination_file

# Preview a file
$ qlmanage -p <file_name>

# compare two files
$ diff file1 file2

# Set an alarm from terminal for 12:45
$ leave 1245

# See history of all your commands
$ history

# Python web server
# Can be used to browse files in your machine via browser
$ python3 -m http.server
$ open localhost:8000

# Shutdown
$ shutdown -h now

# Restart
$ shutdown -r now
```

### Apache

    ports.conf
    sudo a2ensite vboxsf
    sudo a2dissite 000-default
    service apache2 reload

### Commands

```sh
which command        # Returns the location of the binary installed
env                  # Prints out all the environment variables
sudo env             # Prints out all the environment variables for sudo not the current user
command -v ls        # Returns the location of the binary installed. Seems same as `which` command
hostname

tee    # utility copies standard input to standard output, making a copy in zero or more files. Output is unbuffered.

dash               # built-in command interpreter
sh                 # short hand for dash
lsmod              # lists statuses of modules in the Linux Kernel
reboot             # reboots the machine
ls -la /dev        # List all the available devices
ls -la /dev | grep cdrom               # filter on available devices
ls -la /media/cdrom                    # destination directory???
sudo mount <device> <destination>      # Mount a device
sudo mount /dev/cdrom /media/cdrom
id                                     # Displays user and group information
getent group vboxsf                    # Display who all have access to the folder???
sudo usermod -a -G vboxsf <name>       # Provide user access
ls -1 | grep apache
sudoedit sites-available/vboxsf.conf
```

## References

* YT - [50 macOS Tips and Tricks Using Terminal](https://www.youtube.com/watch?v=qOrlYzqXPa8&ab_channel=NetworkChuck) | NetworkChuck
