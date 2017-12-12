# Python

##### Installation

```
MacOS comes pre-installed with Python 2.x. If something goes wrong
> brew install python         // Installs Python 2.x
> brew install python3        // Installs Python 3.x
```

##### Commands

```
> python -m site --user-base            // Find the user base binary directory
```

> Homebrew doesn't know how to install pip or distribute. Luckily both can be easily installed with python scripts available on web.

##### Package Manager

```
There are few package managers specific for Python, and pip is the preferred one.

Installation
> curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
> python get-pip.py

Version check
> pip -V
> pip2 -V
> pip3 -V

> pip install -U pip            // Upgrading pip
```

##### Packages

```
> pip install numpy            // Vectors and matrices in Python
> pip install scipy            // Other scientific computing tools
> pip install pandas           // Dataframes in Python!
> pip install biopython        // Most commonly used Biocomputing Python library
> pip install jupyter          // IPython Notebook is part of Jupyter now. Another populate Biocomputing tool
```

##### VirtualEnv

```
A tool that creates an isolated Python environment for each of your projects. For a particular project, instead of
installing required packages globally, it is best to install them in an isolated folder in the project (say a folder
named venv), that will be managed by virtualenv.

The advantage is that different projects might require different versions of packages, and it would be hard to manage
that if you install packages globally. It also allows you to keep your global /usr/local/lib/python2.7/site-packages
folder clean, containing only critical or big packages that you always need (like IPython, Numpy).

> pip install virtualenv                    // Installation
> virtualEnv --version                      // Verify the version
> cd myProject && virtualenv venv           // Setup virtual env for the project myProject
> virtualenv venv --system-site-packages    // Have virtualenv inherit globally installed packages

Note: These commands create a venv sub-directory in your project where everything is installed. You need to activate it
first though (in every terminal where you are working on your project).
> source venv/bin/activate                  // Active virtual environment

You should see a (venv) appear at the beginning of your terminal prompt indicating that you are working inside the
virtualenv. Now when you install anything, it will be installed in the venv folder, and not conflict with other projects

> deactivate                                // To leave the virtual environment

Note: Remember to add venv to your project's .gitignore file so you don't include all of that in your source code!
Preferably install big packages (like Numpy), or ones you always use (like IPython) globally. Rest can be in virtualenv.
```

##### Virtualenvwrapper

    For easier management of different virtual environments for multiple packages. Extension to `virtualEnv`.

    Features
    1. Organizes all of your virtual environments in one place (~/.virtualenv). Does not add them to the project directory.
    2. Wrappers for managing your virtual environments (create, delete, copy).
    3. Use a single command to switch between environments.
    4. Tab completion for commands that take a virtual environment as argument.
    5. User-configurable hooks for all operations.
            http://virtualenvwrapper.readthedocs.io/en/latest/scripts.html#scripts
    6. Plugin system for more creating sharable extensions.
            http://virtualenvwrapper.readthedocs.io/en/latest/plugins.html#plugins

    Note: if you have anaconda installed, the packages are installed at location: (probably have virtualenvwrapper already)
            ~/anaconda2/lib/python2.7/site-packages
            ~/.local/lib/python2.7/site-packages                // Some packages are still here

    > pip install virtualenvwrapper                             // Installation
    > source /usr/local/bin/virtualenvwrapper.sh                // Shell startup file

    Instructions:: http://virtualenvwrapper.readthedocs.io/en/latest/index.html



