# Python

##### Official Documentation

```
https://docs.python.org/2.7/
https://docs.python.org/3.5/
```

##### Installation

```sh
# MacOS comes pre-installed with Python 2.x. If something goes wrong
$ brew install python         // Installs Python 2.x
$ brew install python3        // Installs Python 3.x
$ brew install python@3.11    // Installs Python 3.11
```

##### Commands

```sh
# Find the user base binary directory
$ python -m site --user-base

$ python
# Find if installed version is 32 bit or 64 bit
> import struct;print(struct.calcsize("P") * 8)
```

#### pyenv

This is a tool that allows you to manage multiple versions of Python on your machine. It's not specifically designed for creating virtual environments, but it allows you to switch between different versions of Python on the fly.

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

#### Anaconda

```sh
$ conda create -n py36 python=3.6 anaconda
$ conda activate py36
or
$ source activate py36
```

#### Online

```
Colab allows you to write and execute Python in your browser
https://colab.research.google.com/
```

## Review Links

* [Fast API](https://fastapi.tiangolo.com/)
* [Using FastAPI to Build Python Web APIs](https://realpython.com/fastapi-python-web-apis/)

### Additional Readinings

* [Clean Architectures in Python](https://www.thedigitalcatbooks.com/pycabook-introduction/) by Leonardo Giordani (Digital Cat Books)
* [Architecture Patterns with Python](https://www.cosmicpython.com/) by Harry J.W. Percival and Bob Gregory (O’Reilly)
* [Microservice APIs](https://www.manning.com/books/microservice-apis) by José Haro Peralta (Manning)
* [Domain-driven design](https://en.wikipedia.org/wiki/Domain-driven_design) | Wikipedia
