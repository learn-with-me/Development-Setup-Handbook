# Node

##### Installation

```
Option 1
$ curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"

Option 2 (preferred)
$ brew install node      // Install
$ brew install node@6    // Install specific version
$ brew uninstall node    // Uninstall

Option 3
$ brew install yarn      // Install Yarn as Node's package manager. Also install Node.js if not installed already.

General steps involved using brew
$ brew search node       // This can return you multiple versions of node with one selected as default
$ brew unlink node       // If you have latest package installed, unlink it first
$ brew install node@7    // Install the desired version, if not already done
$ brew link node@7       // Then link the desired version
$ node --version         // confirm the node version if everything went correctly

Option 4
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.7/install.sh | bash
    // Installs or updated NVM (Node Version Manager)
    http://sourabhbajaj.com/mac-setup/Node.js/
    
Installation location: /usr/local/bin/node and /usr/local/bin/npm
```

##### Official Documentation

```
https://nodejs.org/dist/latest-v8.x/docs/api/
https://nodejs.org/docs/v6.9.2/api/
https://nodejs.org/en/docs/guides/

Contributing
https://nodejs.org/en/get-involved/
```

##### Package manager

```
1. NPM
2. Yarn
```

##### Commands

```

```

> Remember: You can manager multiple versions of Node via NVM \(Node Version Manager\)



