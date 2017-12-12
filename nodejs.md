# Node

##### Installation

```
Option 1
> curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"

Option 2 (preferred)
> brew install node      // Install
> brew install node@6    // Install specific version
> brew uninstall node    // Uninstall

Option 3
> brew install yarn      // Install Yarn as Node's package manager. Also install Node.js if not installed already.

General steps involved using brew
> brew search node       // This can return you multiple versions of node with one selected as default
> brew unlink node       // If you have latest package installed, unlink it first
> brew install node@7    // Install the desired version, if not already done
> brew link node@7       // Then link the desired version
> node --version         // confirm the node version if everything went correctly

Option 4
> curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.7/install.sh | bash
    // Installs or updated NVM (Node Version Manager)
    http://sourabhbajaj.com/mac-setup/Node.js/
```

##### Package manager

```
NPM
====
Most popular choice for Node as a package manager. Gets installed with Node automatically.

Yarn
====
Upcoming popular choice as a package manager
> brew install yarn                    // Installs Yarn. Also installs Node.js if not already installed.
> brew install yarn --without-node     // Installs Yarn without Node.js, if you use nvm or similar

Add yarn to PATH via .bash_profile
> export PATH="$PATH:/opt/yarn-[version]/bin"
```

##### NVM - Node version manager

```
Node Version Manager is a bash script used to manage multiple released Node.js versions.
It allows you to perform operations like install, uninstall, switch version, etc.

> curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
OR
> wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

The script clones the nvm repository to ~/.nvm and adds the source line to your profile
(~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc).

Install a Node release by choosing one from Node releases page
https://nodejs.org/en/download/releases/
The command nvm install 5.10.1 installs a stable release for us
```

##### NPM Commands

```
npm -i
npm install
npm install --save
npm install --save-dev
npm install --save --save-exact cool-ascii-faces
```



