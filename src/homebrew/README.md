# Homebrew

[Official Site](https://brew.sh/)

Missing MacOS package manager. Installs common libraries and utilities not bundled with OSX. Typically these are development related libraries. Installation is dependent on `XCode command line` tools \(large dependency\) and `ruby` to be installed.

Homebrew typically deals with command line software. Most of the software are distributed under open source license. Default package install location is `/usr/local`.

## Installation

```sh
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
OR
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure the following is set in your path
$ export PATH="/usr/local/bin:$PATH"
```

### Verify

```sh
$ brew --version
```

### Troubleshooting

```sh
$ brew doctor
# Use this command after system changes (such as OS X or Xcode updates) or if you think you need to troubleshoot your
# Homebrew installation. The output will tell you what’s wrong and generally how to fix it.

# Updates your Homebrew formula list in local with latest version available
$ brew update
# Note, this doesn’t update all your installed packages!
# What this does is update the versions and availability of packages you could install.
# You want to run this often to keep your Homebrew installation up to date with the latest available software.

# Upgrade all locally installed packages
$ brew upgrade
```

## Commands

```sh
# Search all packages containing the keyword
$ brew search <keyword>

# Install a software package on local system.
$ brew install [insert package name here]

# list all the packages currently installed on your system
$ brew list

# After you install a package, you get a screenful of information or configuration steps.
# This will let you see again.
$ brew info [insert package name here]

# Remove a package you previously installed.
$ brew uninstall [insert package name here]

# Start/Stop a service
$ brew services start [service name]
$ brew services start tomcat
$ catalina --version
```

## Add-ons : Cask

`brew cask` is an extension that allows management of graphical applications through Cask project. Search Cask packages [here](https://caskroom.github.io/search).

### Installation

```sh
# Install Homebrew-Cask
$ brew tap caskroom/cask

# List packages installed by Cask
$ brew cask list

# Install a package via Cask
$ brew cask install <package>

# Installs a package again via Cask
$ brew cask reinstall <package>

# Uninstall an installed package via Cask
$ brew cask uninstall <package>
```

### Searching Casks

Go [here](https://github.com/caskroom/homebrew-cask/tree/master/Casks).
Type `t` and then the name of the package you are looking for. It'll filter the formula.

### Install a specific version

1. Uninstall the package
2. Go to the *.rb file on Github
3. Get the file history
4. Open the complete within the hash of the version you are looking to install
    Example: https://github.com/caskroom/homebrew-cask/blob/e8816187ae43f52b598f15f45b3453e22727ac99/Casks/virtualbox.rb
5. Install just like any other package

Original source [here](https://www.jverdeyen.be/mac/downgrade-brew-cask-application/).

## Add-ons : Tap

`brew tap` allows Homebrew to tap into another repository of formulae. Taps are external sources of Homebrew formulae and/or external commands. They can be created by anyone to provide their own formulae and/or external commands to any Homebrew user.

```sh
# List tapped repositories
$ brew tap

# Add tap
$ brew tap <tapname>

# Remove a tap
$ brew untap <tapname>
```

## Common issues

### Permissions issue

Sometimes when you switch users on the same machine, you may run into permissions issue. If you're an admin, run the following command to set permissions to the current logged in user

```
sudo chown -R $(whoami) $(brew --prefix)/*
```
