# Node.js Tips & Tricks

## Node Cheatsheet

```sh
$ node                        # Opens up Node REPL in command line
> .save index.js              # Saves REPL session into a file
> .load index.js              # Loads content of a file into Node REPL
> c <tab> <tab>               # Lists all possible combination for the letter C or anything you type
$ node index.js               # Runs a js script (index.js in this case)

$ node -p "some string"       # Executes a string expression
$ node -p "os.cpus().length"
$ node -p "process.versions.v8"
$ node -p "process.argv" hello 42

$ node -h | less              # Help on node
$ node --v8-options | grep "in progress"
$ NODE_DEBUG="http,fs" node index.js
$ VAL1=10 node index.js       # Sets a variable key-value in process.env
    $ export VAL1=10          # works same as above, just two steps
    $ node index.js
```

## Fix npm global permissions

```sh
$ mkdir ~/.npm-global
$ npm config set prefix '~/.npm-global'
$ export PATH=~/.npm-global/bin:$PATH
$ source ~/.profile
```

## Global Installations

```sh
p5-manager
http-server
live-server
```

## Local Installations

```sh
yup - Javascript object validation based on Joi
```
