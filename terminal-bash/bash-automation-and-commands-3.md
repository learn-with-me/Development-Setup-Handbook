# Bash Profile

Good spot to put small reusable aliases, functions, variables that we want us to have available anywhere in bash.

#### Common useful settings

```
alias git_sync="git pull -r && git push"
alias ll="ls -laG"

export PATH="$PATH:~/scripts"
```

###### If we forget what an alias does?

```
$ type <alias>
$ type ll
```

###### What after we update bash\_profile?

```
$ source .bash_profile    # Tells the OS to evaluate the .bash_profile file
```



