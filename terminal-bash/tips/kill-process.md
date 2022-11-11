# Find and Kill a Process

    # Find out what program listens on port 8080
    $ sudo lsof -i :8080 | grep LISTEN

    # Name of process does not tell enough. Now find by port number for details.
    $ ps -ef 42975

    # Either kill the process by PID directly after step 1 or come through step 2
    $ kill -9 <PID>
