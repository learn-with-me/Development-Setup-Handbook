---
tags:
  - python-package
  - concurrency
  - parallelism
  - async
  - await
---

# starlette

[Starlette](https://www.starlette.io/) is a lightweight ASGI framework/toolkit, which is ideal for building async web services in Python.

Much of FastAPI’s web code is based on the Starlette package. It can be used as a web framework in its own right, or as a library for other frameworks, such as FastAPI. Like any other web framework, Starlette handles all the usual HTTP request parsing and response generation. It’s similar to [Werkzeug](https://werkzeug.palletsprojects.com/), the package that underlies Flask.

Its most important feature is its support of the modern Python asynchronous web standard: [ASGI](https://asgi.readthedocs.io/). Until now, most Python web frameworks (like Flask and Django) have been based on the traditional synchronous [WSGI](https://wsgi.readthedocs.io/) standard. Because web applications so frequently connect to much slower code (e.g., database, file, and network access), ASGI avoids the `blocking` and `busy waiting` of WSGI-based applications.

## Types of Concurrency

In `parallel computing`, a task is spread at the same time across multiple dedicated CPUs. This is common in “number crunching” applications like graphics and machine learning.

In `concurrent computing`, each CPU switches among multiple tasks. Some tasks take longer than others, and we want to reduce the total time needed. reading a file or accessing a remote network service is literally thousands to millions of times slower than running calculations in the CPU.

With CPU-intensive Python applications, the usual solution is to use multiple processes, and let the OS manage them. Python has a [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) module for this.

You can also run threads of control within a single process. Python’s [threading](https://docs.python.org/3/library/threading.html) package manages these.

> Threads are often recommended when your program is I/O-bound, and multiple processes when you’re CPU-bound.

Traditionally, Python kept the process-based and thread-based libraries separate. Developers had to learn the arcane details of either to use them. A more recent package called [concurrent.futures](https://docs.python.org/3/library/concurrent.futures.html) is a higher-level interface that makes them easier to use.

FastAPI actually also manages threads for normal synchronous functions (`def`, not `async def`) via threadpools. 

> The use of async and await on their own does not make code run faster. In fact, it might be a little slower, from async setup overhead. The main use of async is to avoid long waits for I/O.

`Green threads` such as [greenlet](https://greenlet.readthedocs.io/), [gevent](http://www.gevent.org/) and [eventlet](https://eventlet.net/) provide another mysterious mechanism. These are cooperative (not preemptive). They’re similar to OS threads, but run in user space (i.e, your program) rather than in the OS kernel. They work by monkey-patching some standard Python functions to make concurrent code look like normal sequential code: they give up control when they would block waiting for I/O.

> OS threads are `lighter` (use less memory) than OS processes, and green threads are lighter than OS threads. In some [benchmarks](https://blog.miguelgrinberg.com/post/ignore-all-web-performance-benchmarks-including-this-one), all the async methods were generally faster than their sync counterparts.

