# Google V8 Engine

Google V8 is a JavaScript engine initially created for Google Chrome, but it can also be used as a standalone. This makes it the perfect fit for Node.js, and it is the only part of the platform that actually “understands” JavaScript.

V8 compiles JavaScript down to native code and executes it. During execution, it manages the allocation and freeing of memory as needed. This means that if we talk about memory management in Node.js we actually always talk about V8.

### V8’s memory scheme

A running program is always represented through some space allocated in memory. This space is called Resident Set. V8 uses a scheme similar to the Java Virtual Machine and divides the memory into segments:

* **Code:** the actual code being executed
* **Stack:** contains all value types \(primitives like integer or Boolean\) with pointers referencing objects on the heap and pointers defining the control flow of the program
* **Heap:** a memory segment dedicated to storing reference types like objects, strings, and closures

Within Node.js, the current memory usage can easily be queried by calling `process.memoryUsage()`. This function will return an object containing:

* Resident set size
* Total size of the heap
* Heap actually used

### Garbage Collection

The used heap graph is highly volatile but always stays within certain boundaries to keep the median consumption constant. The mechanism that allocates and frees heap memory is called garbage collection.

> If the graph constantly goes up even with the saw-tooth pattern, there is potentially a memory leak.
>
> If a program allocates memory that is never freed, the heap will constantly grow until the usable memory is exhausted, causing the program to crash. We call this a "**memory leak**"

Garbage collection in Node.js is solely managed by V8. This means that we cannot actively allocate or deallocate memory in JavaScript.

Garbage collection is a rather costly process because it interrupts the execution of an application, which naturally impacts its performance. To remedy this situation, V8 uses two types of garbage collection:

* **Scavenge:** fast but incomplete
* **Mark-Sweep:** relatively slow but frees all non-referenced memory

By using the native module **node-gc-profiler**, we can gather even more information about garbage collection runs. The module subscribes to garbage collection events fired by V8 and exposes them to JavaScript. The object returned indicates the type of garbage collection and the duration.

Wouldn’t it be great if we could have a look into our heap to see what’s currently in there? Fortunately, we can! V8 provides a way to dump the current heap, and **V8-profiler** exposes this functionality to JavaScript. If there is a memory leak, you may end up with a significant number of such files. You should monitor this closely and add some alerting capabilities to that module.

#### References

```
https://blog.codeship.com/understanding-garbage-collection-in-node-js/
http://jayconrod.com/posts/55/a-tour-of-v8-garbage-collection

https://www.xarg.org/2016/06/forcing-garbage-collection-in-node-js-and-javascript/
https://medium.com/front-end-weekly/my-node-js-memory-leak-and-some-memory-management-and-garbage-collection-6281a5308b4e
```
