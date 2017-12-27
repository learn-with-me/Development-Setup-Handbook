# Terminal Cheatsheet

##### Commands

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
    sudo usermod -a -G vboxsf anshul       // Provide user access
    ls -1 | grep apache
    sudoedit sites-available/vboxsf.conf


    Apache
    ======
    ports.conf
    sudo a2ensite vboxsf
    sudo a2dissite 000-default
    service apache2 reload



