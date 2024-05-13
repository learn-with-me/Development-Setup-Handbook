# Braces Expansion

Brace expansion is a mechanism by which arbitrary strings can be generated. Patterns to be brace expanded take the form of an optional preamble, followed by a series of comma-separated strings between a pair of braces, followed by an optional postscript.

This is a cool technique to perform multiple operations via a simple modification

```sh
# copy existing file as config.json.backup
$ cp config.json{,.backup}

# Create multiple directory structures.
$ mkdir -p project/{a,b,c}/src
    # Validate the directory structures created above
    $ tree

# Returns pre-a-post, pre-b-post, pre-c-post
$ echo pre-{a,b,c}-post

# Returns integer sequence 1 to 10
$ echo {1..10}

# Returns char sequence from a to j
$ echo {a..j}

Part of the expansion are few unique commands
$ !!                 # Runs the last command executed. Useful when you forgot to add sudo
$ sudo !!

$ !$                 # Refers to the last argument of the previous command
$ touch script.sh
$ chmod +x !$        # This will already know to replace script.sh here
```

## References

* [How-to: Shell Expansion](https://ss64.com/osx/syntax-expand.html)
