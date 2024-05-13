# Conda Cheatsheet

## Conda Basics

```sh
# Verify conda is installed, check version number
$ conda info

# Update conda to the current version
$ conda update conda

# Install a package included in Anaconda
$ conda install <package>
# Install multiple packages in a single command
$ conda install numpy matplotlib seaborn scikit-learn

# Run a package after install. Example *Spyder
$ spyder

# Update any installed program
$ conda update <package>

# Command line help
$ conda install --help

# Open Anaconda Navigator
$ anaconda-navigator
```

## Using Environments

```sh
# Create new environment named py39, install Python 3.9
$ conda create --name py39 python=3.9

# Activate the new environment to use it
$ source activate py39

# Deactivate the current environment
$ source deactivate

# List all my environments. Active env is shown with env
$ conda env list

# Make exact copy of an environment
$ conda create --clone py39 --name py39-2

# List all Packages and versions installed in active environment
$ conda list

# List the history of each change to the current environment
$ conda list --revisions

# Restore environments to a previous revision
$ conda install --revision 2

# Save environment to a text file
$ conda list --explicit > bio-env.txt

# Delete an environment and everything in it
$ conda env remove --name bio-env

# Create environment from a text file
$ conda env create --file bio-env.txt

# Stack commands: create a new env, name it and install biopython package
$ conda create --name bio-env biopython
```

## Finding Conda packages

```sh
# Use Conda to search for a package
$ conda search <package>

# See list of all packages in Anaconda
$ https://docs.anaconda.com/a
```

## Installing and Updating packages

```sh
# install a new package (Jupyter Notebook) in active env
$ conda install jupyter

# Run an installed package (Jupyter Notebook)
$ jupyter-notebook

# Install a new package toolz in a different env (bio-env)
$ conda install --name bio-env toolz

# Update a package in current environment
$ conda update scikit-learn

# Install a package from a specified channel
$ conda install --channel conda-forge boltons

# Install a package directly from PiPy in current env using Pip
$ pip install boltons

# Remove one of more packages from a specified env
$ conda remove --name bio-env toolz boltons
```
