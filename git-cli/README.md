# Git

## Verify
```
$ git --version
```
If git is intalled locally, you'll see something like 
```
git version 2.24.3 (Apple Git-128)
```

## Installation

> If you have XCode installed on Mac, Git may already be installed.

```
Option 1: (preferred)
If you have brew (Homebrew) installed already
$ brew install git

Option 2:
If not, download and run the installation from http://git-scm.com/download/mac

Linux
=====
$ sudo dnf install git                // RPM-based distribution like Fedora, RHEL or CentOS
$ sudo yum install git                // for older versions of Fedora
$ sudo apt-get install git            // Debian-based distribution like Ubuntu
These are basic package management tools that comes pre-installed
```

## Global Configuration

By default there is no need for additional configuration. This step is optional if you want to change something.
```
git config --global user.name "First Last"
git config --global user.email "username@gmail.com"
```

## Common Commands

```
git clean -fxd                # remove all untracked files
```

## Cheatsheet

[here](./cheatsheet.md)

## References

- Official [documentation](https://git-scm.com/doc)
- Official [reference manual](https://git-scm.com/docs)
- Official online book [Pro Git](https://git-scm.com/book) (free)
- GitHub [cheatsheet](https://training.github.com/downloads/github-git-cheat-sheet/)
- Git [Hooks](https://git-scm.com/docs/githooks)
