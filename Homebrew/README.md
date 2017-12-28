# Homebrew

Missing MacOS package manager. Installs common libraries and utilities not bundled with OSX. Typically these are development related libraries. Installation is dependent on `XCode command line` tools \(large dependency\) and `ruby` to be installed.

Default package install location is `/usr/local`

##### Installation

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
OR
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Make sure the following is set in your path
$ export PATH="/usr/local/bin:$PATH"
```

##### Commands

```
$ brew --version

$ brew doctor
Use this command after system changes (such as OS X or Xcode updates) or if you think you need to troubleshoot your
Homebrew installation. The output will tell you what’s wrong and generally how to fix it.

$ brew update
This will update your Homebrew formula list in local with latest version. Note, this doesn’t update all your installed
packages! What this does is update the versions and availability of packages you could install. You want to run this
often to keep your Homebrew installation up to date with the latest available software.

$ brew upgrade
This will upgrade your installed packages.

$ brew search [insert search term here]
This command will search the possible packages so you can find the one you want.

$ brew install [insert package name here]
This will install a software package onto your system.

$ brew list
This will list all the packages that are currently installed on your system.

$ brew info [insert package name here]
After you install a package, you get a screenful of information or configuration steps. This will let you see again.

$ brew uninstall [insert package name here]
Remove a package you previously installed.
```

#### Add-ons

```
Homebrew typically deals with command line software. Most of the software are distributed under open source license.

brew cask -> is an extension that allows management of graphical applications through Cask project
$ brew tap caskroom/cask        // Install Homebrew-Cask
$ brew cask list                // List packages installed by Cask
$ brew cask install <package>   // Install a package via Cask
https://caskroom.github.io/search        // Search for Cask packages

brew tap -> allows Homebrew to tap into another repository of formulae. Taps are external sources of Homebrew formulae
and/or external commands. They can be created by anyone to provide their own formulae and/or external commands to any
Homebrew user.
$ brew tap                     // list tapped repositories
$ brew tap <tapname>           // add tap
$ brew untap <tapname>         // remove a tap
```

#### More info

```
Refer https://brew.sh/
```



