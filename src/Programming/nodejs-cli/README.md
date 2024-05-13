# Node.js

A wrapper around VMs like V8/Chakra with built-in modules \(fs, http, crypto, zip, ...\) providing rich features through easy-to-use _asynchronous_ APIs (no threads). If the built-in modules are not enough, you can build packages for Node.js using C++ or JavaScript depending on what you want. This makes Node a great platform for tools other than being a platform for backend servers. Node.js also ships with debugger and other utilities.

* Node ships with a reliable package manager \(_NPM_\) and it works with the NPM register \(hosted at npmjs.org\)
* Node has a reliable module dependency manager \(referred to as _CommonJS_\). This is basically the "_require_" function in Node, combined with the "_module_" object.

#### Modern JavaScript

##### Scopes

* Block scope - bleed out to the common namespace, when using var. Example for-loop
* Function scope - do not bleed out, when using var. Example function

##### this

* Regular function cares about who calls it. "this" refers to the caller of the function
* Arrow functions do not care about who calls them. "this" refers to the scope within. Makes it a great use case for events and listeners because it gives easy access to "this" of the defining environment.
* In any node module, by default, global "this" is associated with the exports object

#### Questions

```
• Can var variable be accessed out of for-loop as well as a function?
• Can let variable be accessed out of for-loop as well as a function?

```

## Installation Path

```
Node.js - /usr/local/bin/node
NPM     - /usr/local/bin/npm
```

## References

- http://sourabhbajaj.com/mac-setup/Node.js/
- https://nodejs.org/dist/latest/docs/api/
- https://nodejs.org/docs/latest-v18.x/api/index.html
- https://nodejs.org/en/docs/guides/

## New Reference Topics

- https://v8.dev/blog/cost-of-javascript-2019#json
- https://v8.dev/features/import-assertions
- https://nodejs.org/docs/latest-v18.x/api/esm.html#modules-ecmascript-modules
- https://nodejs.org/docs/latest-v18.x/api/packages.html#determining-module-system
- https://nodejs.org/es/blog/npm/peer-dependencies/
- https://swc.rs/

## Contributing
https://nodejs.org/en/get-involved/
