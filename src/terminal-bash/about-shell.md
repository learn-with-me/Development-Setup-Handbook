# Shell (MacOS)

A shell is a program that exposes an operating system's services to a human user or other programs. Command-line shells require the user to be familiar with commands and their calling syntax, and to understand concepts about the shell-specific scripting language.

A shell in a way is similar to a programming language. To write the program, you would want to understand it's syntax and underlying concepts.

## Background

Starting with macOS Catalina (10.15), Apple set the default shell to the [Z shell (zsh)](https://en.wikipedia.org/wiki/Z_shell). In previous macOS versions, the default was [Bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)).

Each shell supports a configuration file in your macOS Home folder that gets read every time you open a new terminal window (or tab). This allows the shell environment to be set up properly with your preferences, and so that the tools you depend on are ready to use.

In `zsh`, the configuration file is `~/.zshrc`. In `bash`, it’s `~/.bash_profile`. Some people might tell you to add things to your `~/.bashrc`. Thank them for their help, and teach them that `.bashrc` does not get read automatically on a Mac when you open up a new shell window.

## Which shell am I using?

Option 1

```sh
# print out the shell you're using
$ echo $0
```

Option 2

```sh
# A trick that works in all shells.
# Type any bogus command that you know doesn’t exist
$ somerandomtext

# As a result, you'll get something like
sh: somerandomtext: command not found
or
zsh: command not found: somerandomtext
```

## Changing Shells

```sh
$ chsh -s $(which bash)
$ chsh -s $(which zsh)
```

> Note: When you switch shells, if you expect to have the same configuration, make sure to copy the contents of `~/.bash_profile` into `~/.zshrc` or vice versa. Also look out for any code that is not compatible with both shells.

## References

- [Shell (computing)](https://en.wikipedia.org/wiki/Shell_(computing))
- [Which Shell Am I Using? How Can I Switch?](https://www.moncefbelyamani.com/which-shell-am-i-using-how-can-i-switch/) blog
- [5 Ways to Read and Edit Hidden Files or Dotfiles](https://www.moncefbelyamani.com/5-ways-to-open-hidden-files-on-your-mac/) blog
- [Bash (Unix shell)](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
- [Zsh (Z Shell)](https://en.wikipedia.org/wiki/Z_shell)
