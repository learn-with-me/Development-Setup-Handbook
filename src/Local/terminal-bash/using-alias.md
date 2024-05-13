# Using alias

## Useful Aliases

```sh
$ alias git_sync="git pull -r && git push"
$ alias ll="ls -laG"

$ export PATH="$PATH:~/scripts"
```

### Docker Compose

```sh
$ alias dc='docker-compose'
$ alias dcu='docker-compose up -d'
$ alias dcd='docker-compose down --remove-orphans'
$ alias dcl='docker-compose logs'
$ alias dce='docker-compose exec'
```

## Applying changes

To apply these changes to current terminal window:

```sh
# If using bash shell
source ~/.bash_profile

# If using ZSH shell
source ~/.zshrc
```

## Applying changes permanently

Bash profile is a good spot to put small reusable aliases, functions, variables that we want us to have available anywhere in bash.

To make your changes permanent, depending on the shell you are using, put all temporary commands in `.bash_profile` or `.zshrc` file.

## Forgot what alias does?

```sh
$ type <alias>
$ type ll
```
