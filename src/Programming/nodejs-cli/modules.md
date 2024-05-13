# Modules

Modules are independent, reusable code that are isolated from other project dependencies and serve as a local library.

Think of it as writing an inner function, which serves a very specific task, however is not generic enough to be reusable in other places/projects.
Modules are same to a project. They address separation of concern, without having a need to create a library out of that code, importing them or managing versions, etc.

TLDR; Javascript has a few approaches to manage module system within a project. `ESM` is the most preferred approach of all. ESM supports both server as well as client side, synchronously as well as asynchronously.

Node.js has two module systems: `CommonJS` modules and `ECMAScript` modules.

## CommonJS

This system relies on importing and exporting modules using the keywords _require_ and _exports_. `require` is a function used to import functions from another module. `exports` is an object where any function put into it will get exported.
The `module.exports` object is really specific to NodeJS.

```javascript
  // utils.js
  // we create a function 
  function add(r){
    return r + r;
  }
  // export (expose) add to other modules
  exports.add = add;
```

```javascript
  // index.js
  var utils = require('./utils.js');
  utils.add(4); // = 8
```

The commonJS team created this API as a `synchronous` one which is not that good for browsers... Moreover, Commonjs isn't natively understood by browsers; it requires either a loader library or some transpiling. This is designed for `server development` and is synchronous. i.e., the files are loaded one by one in order inside the file.

## Asynchronous Module Definition (AMD)

AMD was born out of CommonJS to support `asynchronous` module loading. This is the module system used by [RequireJS](https://requirejs.org/) and that is working client-side (in `browsers`).

```javascript
  // add.js
  define(function() {
    return add = function(r) {
      return r + r;
    }
  });
```

```javascript
  // index.js
  define(function(require) {
    require('./add');
    add(4); // = 8
  }
```

## Universal Module Definition (UMD)

[UMD](https://github.com/umdjs/umd) is based on AMD but with some special cases included to handle CommonJS compatibility. Unfortunately, this compatibility adds some complexity that makes it complicated to read / write.

Just ignore it.

## ES2015 Modules (ESM)

As those 3 formats are not that easy to read, hard to analyze for static code analyzer and not supported everywhere, the ECMA team created ES6. This format is really simple to read and write and supports both synchronous and asynchronous modes of operation.

```javascript
  // add.js
  export function add(r) {
    return r + r;
  }
```

```javascript
  // index.js
  import add from "./add";
  add(4); // = 8
```

Moreover, es modules can be `statically analyzed` which allow build tools (like Webpack or Rollup) to perform tree-shaking on the code. `Tree-shaking` is a process that removes unused code from bundles.

Unfortunately, this format still have 2 cons (but they're improving):
- [Proposal](https://github.com/tc39/proposal-dynamic-import) for ESM to supports dynamically imported modules is in stage 4 now and all [browsers](https://caniuse.com/#feat=es6-module-dynamic-import) support it except IE.
- It isn't supported on all the browsers but fortunately, this can be "fixed" thanks to... transpiling !

### Transpiling

Transpiling is the process of translating one language or version of a language to another. So here, the idea is to transpile ES6 to ES5 to get a better browser support. Unfortunately, this transpilation has a cost as it adds some extra code to patch the missing features of ES6 that don't exist in ES5.

The most famous transpiler that is usually used in this case is [Babel](https://babeljs.io/).

### Known Trade-offs

#### ESM must have the *.mjs file extension

You can’t know for sure what kind of JavaScript code you’re looking at just by parsing it. With backwards compatibility being a primary goal for Node.js, the author needs to opt-in into the new mode.

#### CJS can only import ESM via asynchronous import()

Node.js will load ESMs asynchronously in order to match the browser behavior as close as possible. Hence, a synchronous `require()` of an ESM will not be possible. As a consequence, every function that depends on an ESM needs to be `asynchronous`.

#### CJS exposes a single, immutable default export to ESM

There is just a single export called `default` which equals an immutable snapshot of `module.exports` when the CJS module has finished evaluating.

#### Module-scoped variables like module, require and __filename do not exist in ESM

Given the engineering challenges that come with the integration of CJS and ESM into a single runtime, the CTC has done an incredibly good job evaluating the edge cases and trade-offs.

A file extension is basically a hint on how a binary file should be interpreted. If a `module` is not a `script`, we should use a different file extension. Other tools like linters or IDEs can pick up the same information.

## References

- https://code-trotter.com/web/understand-the-different-javascript-modules-formats/
- https://medium.com/webpack/the-state-of-javascript-modules-4636d1774358
