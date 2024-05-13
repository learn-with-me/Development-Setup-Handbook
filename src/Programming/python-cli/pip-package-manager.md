# Pip Package Manager

There are few package managers specific for Python, and pip is the preferred one.

> Homebrew doesn't know how to install pip or distribute. Luckily both can be easily installed with python scripts available on web, if needed. `pip` is shipped with python by default.

## Installation

```sh
$ curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
$ python get-pip.py

Version check
$ pip -V
$ pip2 -V
$ pip3 -V

# Upgrading pip
$ pip install -U pip

# Check for any conflicts in installed packages
$ pip check

# Update list of pinned requirements
$ pip freeze > requirements.txt
```

## Packages

```sh
# Vectors and matrices in Python
$ pip install numpy

# Other scientific computing tools
$ pip install scipy

# Dataframes in Python!
$ pip install pandas

# Most commonly used Biocomputing Python library
$ pip install biopython

# IPython Notebook is part of Jupyter now. Another populate Biocomputing tool
$ pip install jupyter
```

> Note: If you already have a `requirements.txt` file listing all desired depedencies, then run `$ pip install -r requirements.txt` or `$ pip install --requirement requirements.txt`.

Additional options:

* `-U` - upgrade if it had already installed
* `--no-index` - ignore package index (only looking at `--find-links` url instead)
* `-f, --find-links <URL>` - If a URL or path to an HTML file, then parse for links to archives. If a local path or `file://` URL that's a directory, then look for archives in the directory listing.

### Special case

Often, you will want a fast install from local archives, without probing PyPI.

First, download the archives that fulfill your requirements:
```sh
$ pip install --download <DIR> -r requirements.txt
```

Then, install using –find-links and –no-index:
```sh
$ pip install --no-index --find-links=[file://]<DIR> -r requirements.txt
```

## Managing requirements

* Create and active your virtual environment
* Installed desired dependencies in the virtual environment
* Call `$pip freeze > requirements.txt` to export all installed dependencies into the file.

> Note: once you export all dependencies, it may require some cleanup because of previously installed dependencies in the source copy of python depdencies.
