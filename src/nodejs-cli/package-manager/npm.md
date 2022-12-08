# NPM (Node Package Manager)

Most popular choice for Node as a package manager. It puts modules in place so that node can find them, and manages dependency conflicts intelligently. It is extremely configurable to support a wide variety of use cases. Most commonly, it is used to publish, discover, install, and develop node programs.

There is no need for additional installation steps. It gets installed automatically during Node.js installation.

## Installation

### Option 1

```sh
# Option 4 -- Installs or updated NVM (Node Version Manager)
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.7/install.sh | bash
$ nvm install 8              # install node 8
$ nvm alias default 8        # to make node 8 the default
```

### Cheatsheet

```sh
# Clean install
$ npm ci

# Save config in .npmrc
$ npm config set save=true
$ npm config set save-exact=true

# You may want to use prexxx and postxxx scripts in package.json
```

## NPX

A tool intended to let you run CLI of an NPM package without having to install them globally. NPX looks up in existing node\_modules for the folder to find the executable first. You could do that same thing by referencing `.bin` folder in command-line, however this tool makes it simpler. It comes bundled with NPM starting version 5.2.0 and onwards.

```sh
$ npx eslint .
```

## Commands Reference

### Commands - Basic

```sh
# Display current version installed
$ npm --version

# Updates npm version if an update is available
$ npm i -g npm

# Help on NPM
$ npm help npm

# Displays full usage info
$ npm -l

# Starting a new project and generate package.json
$ npm init

# List all npm configuration flags (regardless of project)
$ npm config ls -l
```

### Commands - Package management

```sh
#  Installs dependencies for the current project listed in its `package.json`
$ npm install

# List all global dependencies
$ npm list -g --depth=0

# Display Node and NPM configs
$ npm config list

# Short-hand/alias for npm install
$ npm i

# Installs a package globally
$ npm i -g <package>

# Installs package and adds it as a dependency in package.json
$ npm install --save <package_name>

# Installs package and adds it as a DEV-dependency in package.json
$ npm install --save-dev <package_name>

# Installs package and adds exact version as a dependency in package.json
$ npm install --save-exact <package_name>

$ npm uninstall <package>
```

##### Command - Updating

```sh
# Update production packages
$ npm update

# Update dev packages
$ npm update --dev

# Update global packages
$ npm update -g

# Update a specific package
$ npm update <package_name>

# Check for outdated packages
$ npm outdated <package_name>
```

##### Command - Misc

```sh
# List packages
$ npm ls

# Adds warning for old versions
$ npm deprecate PACKAGE@"< 0.2.0" "critical bug fixed in v0.2.0"

# Install from an absolute path
$ npm i /path/to/repo
```

##### Reference

- https://docs.npmjs.com/
- https://www.npmjs.com/docs/orgs/
- https://npme.npmjs.com/docs/
- https://gist.github.com/AvnerCohen/4051934
