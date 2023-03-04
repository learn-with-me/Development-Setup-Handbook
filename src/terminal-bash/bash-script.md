# Bash Script

## Index

1. Sample Script [clone branch to temp](./scripts/sample.clone-branch-to-temp.sh)
2. Sample Script [count files](./scripts/sample.count-files.sh)
3. Sample Script [functions](./scripts/sample.functions.sh)
4. Sample Script [init js](./scripts/sample.init-js.sh)

## Tips

### Create and Run bash scripts

```sh
# For a new script, just alone this would fail with permission denied
$ ./script.sh

# Change permissions for user to be able to execute the file
$ chmod u+x script.sh

# Or change permissions for all user to be able to execute the file
$ chmod +x script.sh

# You can pass parameters to the script following $1, $2, $3, . . order in the script
```

### Making a script executable

```sh
$ cp script.sh /usr/local/bin/<command>
```

### Exit status in bash

In bash, every script, command or function that runs, returns an exit status.

```
Exit status can range from 0 to 255
Successful execution of a command will return 0

Example:
$ ls
$ echo $?
$ ls donotexist
$ echo $?
```

## Syntax

### Conditional Statements

```sh
if [[ -z myvar ]]; then              # Check is the variable is empty
    echo "true"
elif [[ -e script.sh ]]; then        # Check is file exists
    echo "true"
elif [[ 1 -eq 1 ]]; then             # Numeric equal check
    echo "true"
elif [[ $USER = 'anshul' ]]; then    # Any condition
    echo "true"
else
    echo "false"
fi

Ternary Operation
[[ $USER = 'anshul' ]] && echo "true" || echo "false"
```

### Handling Variables

#### Setting and Unsetting an environment variable

```sh
Bash sets a lot of environment variables.
$ env           # list all the current environment variables
$ var=12        # Sets a variable (not an environment variable)
$ export var    # makes the variable visible to all child processes in context of current shell
$ unset var     # unsets the variable
```
