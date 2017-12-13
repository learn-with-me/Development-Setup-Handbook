# NVM \(Node Version Manager\)

Node Version Manager is a bash script used to manage multiple released Node.js versions. It allows you to perform operations like install, uninstall, switch version, etc.

##### Installation

```
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

The script:
1. Clones the nvm repository to ~/.nvm
2. Adds the source line to your profile (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc)
3. Modules installed globally via npm will no longer be linked to the active version of Node when you install a new node
```

##### Installing a Node release

```
Install a Node release by choosing one from Node releases page [https://nodejs.org/en/download/releases/]
The command nvm install 5.10.1 installs a stable release for us
```

##### Uninstalling

```
$ nvm use system
$ npm uninstall -g <package>
Close and reopen the terminal to see the changes into effect
```

##### Commands

```
$ nvm ls-remote                 # lists all of the available versions of NodeJs & iojs
$ nvm ls                        # list locally installed version
$ nvm install 0.12.3            # install the version 0.12.3 (see ls-remote for available options)
$ nvm uninstall 0.12.3          # uninstall node version 0.12.3
$ nvm use 0.12.3                # switch to and use the installed 0.12.3 version
$ nvm which 0.12.2              # the path to the installed node version
$ nvm current                   # what is the current installed nvm version
$ nvm alias default 0.10.32     # set the default node to the installed 0.10.32 version
$ nvm --help                    # the help documents
```



