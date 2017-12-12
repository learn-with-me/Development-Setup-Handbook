# Conda Cheatsheet

##### Conda Basics

```
> conda info                    // Verify conda is installed, check version number
> conda update conda            // Update conda to the current version
> conda install <package>       // Install a package included in Anaconda
> conda install numpy matplotlib seaborn scikit-learn            // Install multiple packages in a single command
> spyder                        // Run a package after install. Example *Spyder
> conda update <package>        // Update any installed program
> COMMANDNAME --help            // Command line help. Check this out if really true.........
> conda install --help          // Command line help
> anaconda-navigator            // Open Anaconda Navigator
```

##### Using Environments

```
> conda create --name py35 python=3.5        // Create new environment named py35, install Python 3.5
> source activate py35                       // Activate the new environment to use it
> source deactivate                          // Deactivate the current environment
> conda env list                             // List all my environments. Active env is shown with env
> conda create --clone py35 --name py35-2    // Make exact copy of an environment
> conda list                                 // List all Packages and versions installed in active environment
> conda list --revisions                     // List the history of each change to the current environment
> conda install --revision 2                 // Restore environments to a previous revision
> conda list --explicit > bio-env.txt        // Save environment to a text file
> conda env remove --name bio-env            // Delete an environment and everything in it
> conda env create --file bio-env.txt        // Create environment from a text file
> conda create --name bio-env biopython      // Stack commands: create a new env, name it and install biopython package
```

##### Finding Conda packages

```
conda search <package>                // Use Conda to search for a package
https://docs.anaconda.com/a           // See list of all packages in Anaconda
```

##### Installing and Updating packages

```
conda install jupyter                    // install a new package (Jupyter Notebook) in active env
jupyter-notebook                         // Run an installed package (Jupyter Notebook)
conda install --name bio-env toolz       // Install a new package toolz in a different env (bio-env)
conda update scikit-learn                // Update a package in current environment
conda install --channel conda-forge boltons      // Install a package from a specified channel                    
pip install boltons                              // Install a package directly from PiPy in current env using Pip
conda remove --name bio-env toolz boltons        // Remove one of more packages from a specified env
```

##### Managing multiple versions of Python

```
conda create --name py34 python=3.4    // Install different version of Python in a new environment named py34
source activate py34                   // Switch to the new environment that has a different version of Python
which -a python                        // Show the locations of all versions of Python that are currently in the path
python --version                       // Show version information for the current active Python
```



