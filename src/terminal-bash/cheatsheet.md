# Bash Commands

### Braces Expansion

```sh
This is a cool technique to perform multiple operations via a simple modification

$ cp config.json{,.backup}        # copy existing file as config.json.backup
$ mkdir -p project/{a,b,c}/src    # Create multiple directory structures.
    $ tree                            # Validate the directory structures created above
$ echo pre-{a,b,c}-post           # Returns pre-a-post, pre-b-post, pre-c-post
$ echo {1..10}                    # Returns integer sequence 1 to 10
$ echo {a..j}                     # Returns char sequence from a to j

Part of the expansion are few unique commands
$ !!                 # Runs the last command executed. Useful when you forgot to add sudo
$ sudo !!

$ !$                 # Refers to the last argument of the previous command
$ touch script.sh
$ chmod +x !$        # This will already know to replace script.sh here
```

### Pipes

```sh
Pipes pass output of one command to the next command

$ uglify -c -m -- index.js | gzip -9 | wc -c

uglify    # npm module installed globally
-c        # compress file
-m        # minify file
-9        # Compress to maximum
-c        # Return byte count instead of word count
```

### Commands

    which command        // Returns the location of the binary installed
    env                  // Prints out all the environment variables
    sudo env             // Prints out all the environment variables for sudo not the current user
    command -v ls        // Returns the location of the binary installed. Seems same as `which` command
    hostname

    tee    - utility copies standard input to standard output, making a copy in zero or more files. Output is unbuffered.

    dash               // built-in command interpreter
    sh                 // short hand for dash
    lsmod              // lists statuses of modules in the Linux Kernel
    reboot             // reboots the machine
    ls -la /dev        // List all the available devices
    ls -la /dev | grep cdrom               // filter on available devices
    ls -la /media/cdrom                    // destination directory???
    sudo mount <device> <destination>      // Mount a device
    sudo mount /dev/cdrom /media/cdrom
    id                                     // Displays user and group information
    getent group vboxsf                    // Display who all have access to the folder???
    sudo usermod -a -G vboxsf <name>       // Provide user access
    ls -1 | grep apache
    sudoedit sites-available/vboxsf.conf

    Apache
    ======
    ports.conf
    sudo a2ensite vboxsf
    sudo a2dissite 000-default
    service apache2 reload
