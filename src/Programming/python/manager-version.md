# Python Version Manager

## Installation w/o version manager

```sh
# Install latest python3 version
$ brew install python3

# Installs specific python version
$ brew install python@3.12
```

Verify installation using

```sh
# Find the user base binary directory
$ python -m site --user-base

$ python
# Find if installed version is 32 bit or 64 bit
> import struct;print(struct.calcsize("P") * 8)
```

## Using pyenv

`pyenv` is a tool that allows you to manage multiple versions of Python on your machine. It's not specifically designed for creating virtual environments, but it allows you to switch between different versions of Python on the fly.

```sh
$ brew install pyenv
$ eval "$(pyenv init -)"

$ brew install pyenv-virtualenv
$ eval "$(pyenv virtualenv-init -)"

$ pyenv virtualenv venv27
# shows you the list of existing virtualenvs and conda environments
$ pyenv virtualenvs

$ pyenv shell venv27
```

## Using Anaconda

```sh
# Install different version of Python in a new environment named py39
$ conda create -n py39 python=3.9 anaconda
$ conda create --name py39 python=3.9

# Switch to the new environment that has a different version of Python
$ conda activate py39
$ source activate py39

# Show the locations of all versions of Python that are currently in the path
$ which -a python

# Show version information for the current active Python
$ python --version
```

## References

* [pyenv](https://github.com/pyenv/pyenv)
