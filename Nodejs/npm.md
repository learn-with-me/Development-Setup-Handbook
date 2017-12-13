# NPM \(Node Package Manager\)

Most popular choice for Node as a package manager. It puts modules in place so that node can find them, and manages dependency conflicts intelligently. It is extremely configurable to support a wide variety of use cases. Most commonly, it is used to publish, discover, install, and develop node programs.

There is no need for additional installation steps. It gets installed automatically during Node.js installation.

##### Commands - Info

```
> npm --version                            // Display current version installed
> npm i -g npm                             // Updates npm version if an update is available
> npm help npm                             // Help on NPM
> npm -l                                   // Displays full usage info
```

##### Commands - Package installation

```
> npm install                              // Installs dependencies for the current project listed in its package.json
> npm i                                    // Short-hand of npm install
> npm i -g <package>                       // Installs a package globally
> npm install --save <package_name>        // Installs package by name and adds it as a dependency in package.json
> npm install --save-dev <package_name>    // Installs package by name and adds it as a DEV-dependency in package.json
> npm install --save --save-exact cool-ascii-faces
```



