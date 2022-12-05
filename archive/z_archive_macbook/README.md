# Mac OSX Setup

Everything you need to know about setting up your MacOSX development machine.

## First things first

Having a better Mac terminal experience if important for me.

> Source:
>
> [https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7](https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7)
>
> [https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/](https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/)

### Getting started with Terminal

1. Choose a Shell application  
   iTerm2 or Hyper

2. Install your Unix shell  
   Zsh

3. Choosing a framework  
   Oh-my-zsh

4. Custom prompt installation  
   spaceship-prompt

### Environment variables

An environment variable in a named object containing data which can be used by multiple applications or processes.

```
List all the environment variables currently set
$ printenv

Displaying the value of any specific environment variable
$ echo $[variable name]
$ echo $PATH    // Example

Setting temporary environment variable
$ export $[variable_name]=[value]
$ export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home

Temporarily append a value to an existing environment variable
$ export [existing_variable_name]=[new_value]:$[existing_variable_name]
$ export PATH=PATH=/Users/agoel/apache-maven-3.5.0/bin:$PATH

Setting permanent environment variable
Since Mac uses bash shell, so the environment variables can be added to the .bash_profile directory,
for the current user.
$ nano ~/.bash_profile
$ source ~/.bash_profile
```

## What else?

### Basic Installations

* XCode Command line
* Homebrew
* Git
* Java
* IDE - Frontend \(Visual Studio Code, Atom, WebStorm\)
* IDE - Backend \(IntelliJ, PyCharm\)

### Cheatsheet

```
1. Original docs. They are the best, may or may not be written very well, but usually give you everything required.
2. MacOS App - Dash (collective documentation of multiple languages)
3. Personalized docs. What I have here. I find it fastest approach for me.

So, whatever works, is the best for you. You'll need to figure that out by experience.
```

### Bash Commands

```
printenv
cat
less
open . -a 'Visual Studio Code'
touch
echo >
echo >>
mkdir -p a/b/c
rm -rf folder/
mv
cp -R src dest
find images/ -name "*.png"
find images/ -iname "*.png"
find . -type d

defaults write com.apple.finder AppleShowAllFiles YES        // Enable hidden file view
```



