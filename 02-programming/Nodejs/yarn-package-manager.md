# Yarn \(Package Manager\)

An upcoming popular choice as a Package manager, developed by Facebook

##### Official Documentation

```
https://yarnpkg.com/en/docs
https://yarnpkg.com/en/packages
```

##### Installation

```
Option 1
========
$ brew install yarn                    // Installs Yarn. Also installs Node.js if not already installed.
$ brew install yarn --without-node     // Installs Yarn without Node.js, if you use nvm or similar
$ brew upgrade yarn                    // To upgrade Yarn. Yarn will warn you if a new version is available.

Option 2
========
$ npm install --global yarn

Regardless of how you choose to install, Add yarn to PATH via .bash_profile
$ export PATH="$PATH:/opt/yarn-[version]/bin"
```

##### Commands

```
$ yarn --version                        // Verify the version installed
$ yarn init                             // Starting a new project
$ yarn add <package>                    // Install a package and update dependencies in package.json
$ yarn add <package> --dev              // Install a package and update dev dependencies in package.json
$ yarn add <package> --exact            // Install a package with exact version and and update dependencies
$ yarn remove <package>                 // Removing a dependency
$ yarn install                          // Install all dependencies of the project
$ yarn                                  // Short-hand for yarn install
```
