---
tags:
  - python-package
  - concurrency
  - parallelism
---

# multiprocessing

With CPU-intensive Python applications, the usual solution is to use multiple processes, and let the OS manage them. Python has a [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) module for this.

`multiprocessing` is a package that supports spawning processes using an API similar to the threading module. The multiprocessing package offers both local and remote concurrency, effectively side-stepping the Global Interpreter Lock by using subprocesses instead of threads. Due to this, the multiprocessing module allows the programmer to fully leverage multiple processors on a given machine.
