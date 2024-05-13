# Shell

## Find Shell

```sh
# Show default shell. Should be zsh
$ echo $0

# Change shell
$ chsh -s /bin/zsh

```

### Shell Configuration File

Specific to zsh shell. Your root folder should have a file called `.zshrc`.
Use [this](./zshrc.sh) configuration in your config file.

> Remember to replace `my_user_name` with the one you are using right now.

```sh
# Once done updating the config file, apply the configuration update by
$ source ~/.zshrc
```

### Shell Theme Manager

Install `Oh My Zsh` from the website, and apply the configuration.

```sh
# It'll report missing depedencies:

# Install ruby
$ brew install ruby

# In most cases, applying source file changes will give colorls missing
$ sudo gem install colorls


# Install additional plugins
$ brew install zsh-autosuggestions
$ brew install zsh-syntax-highlighting

```

## References

* YT - [How To Make Your macOS Terminal Amazing From Scratch](https://www.youtube.com/watch?v=EdVdT7sPTVY&ab_channel=KantanCoding) | KantanCoding
* YT - [How to setup your Mac Terminal to be beautiful](https://www.youtube.com/watch?v=wNQpDWLs4To&ab_channel=typecraft) | typecraft
* YT - [The Ultimate Mac Terminal Setup - Beginner Tutorial](https://www.youtube.com/watch?v=d4bTkiftBOk&ab_channel=warpdotdev) | warpdotdev
