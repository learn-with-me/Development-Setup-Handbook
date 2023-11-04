# Virtual Environment

It is always a good idea to work in a virtual environment. This way you'll never have to deal with dependency version management in your local machine or cleaning up after your work is done. Sure, it does take more space on your disk, however the benefits far outweigh the cons.

For each project, instead of installing the required packages globally, it is best to install them in an isolated folder within the project itself (commonly named `venv`). The advantage is that different projects might require different versions of packages, and it would be hard to manage that if you install packages globally. It also allows you to keep your global /usr/local/lib/python2.7/site-packages
folder clean, containing only critical or big packages that you always need (like IPython, Numpy).

## venv

`venv` is a built-in virtual environment module in Python 3.3 and onwards, that allows you to create virtual environments in Python. It creates a new Python environment with its own site directories, which can be used to install and manage packages for specific projects. It's simple, lightweight, and easy to use.

### Usage

```sh
# To run the venv module as a standalone program
$ venv <env_name>

# Create use the environment as a Python module
$ python3 -m venv <env_name>
$ python3 -m venv venv

# Active virtual environment as current environment
$ source venv/bin/activate

# To leave the virtual environment
$ deactivate
```

## VirtualEnv

A third-party tool that creates an isolated Python environments. It works with both Python 2 and 3 and allows you to create virtual environments with different Python versions.

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

## Other tools

This combination of pip and venv is so common that people started combining them to save steps, and avoid that source shell wizardry. One such package is [pipenv](https://pipenv.pypa.io/), but a newer rival called [poetry](https://python-poetry.org/) is becoming more popular.

## Resources

* [What is the difference between venv, pyvenv, pyenv, virtualenv, virtualenvwrapper, pipenv, etc?](https://pythonhow.com/what/what-is-the-difference-between-venv-pyvenv-pyenv-virtualenv-virtualenvwrapper-pipenv)
* [Understanding Python virtual environments using venv and virtualenv](https://medium.com/@sukul.teradata/understanding-python-virtual-environments-using-venv-and-virtualenv-283f37d24b13)
