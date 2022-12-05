# Python

##### Official Documentation

```
https://docs.python.org/2.7/
https://docs.python.org/3.5/
```

##### Installation

```
MacOS comes pre-installed with Python 2.x. If something goes wrong
$ brew install python         // Installs Python 2.x
$ brew install python3        // Installs Python 3.x
```

##### Commands

```
$ python -m site --user-base            // Find the user base binary directory

$ python
> import struct;print(struct.calcsize("P") * 8)    # Find if installed version is 32 bit or 64 bit
```

#### Virtual Environment

```
$ brew install pyenv
$ eval "$(pyenv init -)"

$ brew install pyenv-virtualenv
$ eval "$(pyenv virtualenv-init -)"

$ pyenv virtualenv venv27
$ pyenv virtualenvs            // shows you the list of existing virtualenvs and conda environments

$ pyenv shell venv27
```

#### Anaconda

```
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



