# Bash Automation & Commands

#### Bash Scripts

###### Create and Run bash scripts

```
$ ./script.sh            # Just alone this would fail with permission denied
$ chmod u+x script.sh    # Change permissions for user to be able to execute the file
$ chmod +x script.sh     # Change permissions for all user to be able to execute the file

You can pass parameters to the script following $1, $2, $3, . . order in the script
```

###### Sample bash script \(init-js.sh\)

```
echo "Initializing JS project at $(pwd)"
git init
npm init -y    # Create package json with all defaults
mkdir src
touch src/index.js
code .         # opens the current directory with Visual Studio Code editor
```

###### Making a script executable

```
cp script.sh /usr/local/bin/<command>
```

###### Conditional Statements

```
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

#### Handling Variables

###### Setting and Unsetting an environment variable

```
Bash sets a lot of environment variables.
$ env           # list all the current environment variables
$ var=12        # Sets a variable (not an environment variable)
$ export var    # makes the variable visible to all child processes in context of current shell
$ unset var     # unsets the variable
```

###### Clone a branch of local git repository to temp script \(clone-to-temp.sh\)

```
temp=$(mktemp -d)        # mktemp creates a temporary file or folder
git clone --branch $1 $PWD $temp
echo "branch $1 is cloned to $temp"
# run some tasks, tests, etc
```

#### Functions

###### Sample bash script to define and invoke a function \(functions.sh\)

```
greet() {
  echo "$1 world"
}

greet "hello"
```

###### Exit status in bash

```
In bash, every script, command or function that runs, returns an exit status.
Exit status can range from 0 to 255
Successful execution of a command will return 0

Example:
$ ls
$ echo $?
$ ls donotexist
$ echo $?

```



