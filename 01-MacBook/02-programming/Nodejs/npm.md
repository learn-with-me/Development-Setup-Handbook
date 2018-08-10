# NPM \(Node Package Manager\)

Most popular choice for Node as a package manager. It puts modules in place so that node can find them, and manages dependency conflicts intelligently. It is extremely configurable to support a wide variety of use cases. Most commonly, it is used to publish, discover, install, and develop node programs.

There is no need for additional installation steps. It gets installed automatically during Node.js installation.

##### Official Documentation

```
https://docs.npmjs.com/
https://www.npmjs.com/docs/orgs/
https://npme.npmjs.com/docs/
```

##### Commands - Basic

```
$ npm --version                            // Display current version installed
$ npm i -g npm                             // Updates npm version if an update is available
$ npm help npm                             // Help on NPM
$ npm -l                                   // Displays full usage info

$ npm init                                 // Starting a new project and generate package.json
$ npm config ls -l                         // List all npm configuration flags (regardless of project)
```

##### Commands - Package management

```
$ npm install                              // Installs dependencies for the current project listed in its package.json
$ npm i                                    // Short-hand/alias for npm install
$ npm i -g <package>                       // Installs a package globally
$ npm install --save <package_name>        // Installs package and adds it as a dependency in package.json
$ npm install --save-dev <package_name>    // Installs package and adds it as a DEV-dependency in package.json
$ npm install --save-exact <package_name>  // Installs package and adds exact version as a dependency in package.json
$ npm uninstall <package>
```

##### Command - Updating

```
$ npm update                                // Update production packages
$ npm update --dev                          // Update dev packages
$ npm update -g                             // Update global packages
$ npm update <package_name>                 // Update a specific package
$ npm outdated <package_name>               // Check for outdated packages
```

##### Command - Misc

```
$ npm ls                                    // List packages
$ npm deprecate PACKAGE@"< 0.2.0" "critical bug fixed in v0.2.0"    // Adds warning for old versions
$ npm i /path/to/repo                       // Install from an absolute path
```

##### Reference

```
https://gist.github.com/AvnerCohen/4051934
```



