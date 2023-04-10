# Virtual Environment

When it comes to Python, it is a good idea to work in a virtual environment. This way you'll never have to deal with version management in your local machine or cleaning up after your work is done.

## VirtualEnv

A tool that creates an isolated Python environment for each of your projects. For a particular project, instead of installing required packages globally, it is best to install them in an isolated folder in the project (say a folder named `venv`), that will be managed by virtualenv.

The advantage is that different projects might require different versions of packages, and it would be hard to manage
that if you install packages globally. It also allows you to keep your global /usr/local/lib/python2.7/site-packages
folder clean, containing only critical or big packages that you always need (like IPython, Numpy).

### Installation

```sh
# Installation
$ pip install virtualenv

# Verify the version
$ virtualEnv --version
```

### Setup

```sh
# Setup virtual env for the project myProject
$ cd myProject && virtualenv venv

# Have virtualenv inherit globally installed packages
$ virtualenv venv --system-site-packages

# Note: These commands create a venv sub-directory in your project where everything is installed.

# Create Python3 Virtual Environment
$ virtualEnv -p python3 venv
```

> Note: Remember, virtual environment can only be created based off an existing python version installed locally.

### Usage

To use a virtual environment, uou need to activate it first (in every terminal window, where you are working on your project).

```sh
# Active virtual environment
$ source venv/bin/activate

# You should see a (venv) appear at the beginning of your terminal prompt indicating that you are working inside the virtualenv. Now when you install anything, it will be installed in the venv folder, and not conflict with other projects

# To leave the virtual environment
$ deactivate
```

> Note: Remember to add venv to your project's .gitignore file so you don't include all of that in your source code!
> NOte: Preferably install big packages (like Numpy), or ones you always use (like IPython) globally. Rest can be in virtualenv.

## Virtualenvwrapper

Used for easier management of different virtual environments for multiple packages. Extension to `virtualEnv`.

### Features

1. Organizes all of your virtual environments in one place (~/.virtualenv). Does not add them to the project directory.
2. Wrappers for managing your virtual environments (create, delete, copy).
3. Use a single command to switch between environments.
4. Tab completion for commands that take a virtual environment as argument.
5. User-configurable hooks for all operations.
        http://virtualenvwrapper.readthedocs.io/en/latest/scripts.html#scripts
6. Plugin system for more creating sharable extensions.
        http://virtualenvwrapper.readthedocs.io/en/latest/plugins.html#plugins

> Note: if you have anaconda installed, the packages are installed at location: (probably have virtualenvwrapper already)
> 1. ~/anaconda2/lib/python2.7/site-packages
> 2. ~/.local/lib/python2.7/site-packages

```sh    
# Installation
$ pip install virtualenvwrapper

# Shell startup file
$ source /usr/local/bin/virtualenvwrapper.sh
```

Instructions:: [latest docs](http://virtualenvwrapper.readthedocs.io/en/latest/index.html)
