# Concurrency

Threading has its uses, but speeding up computations isn't one of them. Threading has more to do with waiting for input and notifying the other thread on that same core in a timely and SAFE manner, when you want to get a more "real time" response from user input as an example.

To set some context:

- `CPU-bound` programs are those that are pushing the CPU to its limit.
- `I/O-bound` programs are the ones that spend time waiting for Input/Output. I/O-bound programs sometimes have to wait for a significant amount of time till they get what they need from the source due to the fact that the source may need to do its own processing before the input/output is ready

## Global Interpreter Lock

`Python's Global Interpreter Lock (GIL)`, a mutex (or a lock), allows only one CPU thread to execute Python bytecodes at a time, and hold the control of the Python interpreter. It can be a performance bottleneck in CPU-bound and multi-threaded code.

### Problems GIL solved

Python uses reference counting for [memory management](https://realpython.com/python-memory-management/). It means that objects created in Python have a reference count variable that keeps track of the number of references that point to the object. When this count reaches zero, the memory occupied by the object is released.

This reference count variable needed protection from race conditions where two threads increase or decrease its value simultaneously. Because it can cause either `leaked memory` that is never released or, even worse, `incorrectly release` the memory while a reference to that object still exists. This reference count variable can be kept safe by adding locks to all data structures that are shared across threads so that they are not modified inconsistently.

The GIL is a single lock on the interpreter itself which adds a rule that execution of any Python bytecode requires acquiring the interpreter lock. This prevents deadlocks (as there is only one lock) and doesn’t introduce much performance overhead. But it effectively makes any CPU-bound Python program single-threaded.

In the multi-threaded version the GIL `prevented` the CPU-bound threads from executing in parallel. The GIL does not have much impact on the performance of I/O-bound multi-threaded programs as the lock is shared between threads while they are waiting for I/O.

## multiprocessing

The most popular way is to use a multi-processing approach where you use `multiple processes` instead of `threads`. Each Python process gets its own Python interpreter and memory space so the GIL won’t be a problem. Python has a `multiprocessing` module which lets us create processes easily.

The time won't drop by the same ratio as the number of threads because process management has its own `overheads`. Multiple processes are heavier than multiple threads, so, this could become `a scaling bottleneck`.

## Alternative interpreter

Python has multiple interpreter implementations. CPython, Jython, IronPython and [PyPy](https://realpython.com/pypy-faster-python/), written in C, Java, C# and Python respectively, are the most popular ones. GIL exists only in the original Python implementation that is CPython. If your program, with its libraries, is available for one of the other implementations then you can try them out as well.

```python
# Find the interpreter being used
>>> import platform
>>> platform.python_implementation()
'CPython'

# Find the interpreter path
>>> import sys
>>> sys.executable
'/usr/local/opt/python@3.12/bin/python3.12'
```

## Modules available

The choice between asyncio, multiprocessing, and threading in Python depends on the nature of the tasks your program needs to perform.

1. **Asyncio**: This is a good choice for `I/O-bound tasks`, especially when those tasks involve high-latency operations like network requests. Asyncio can handle thousands of network connections concurrently using a single thread, by using `non-blocking I/O operations` and an `event loop` to manage tasks. However, asyncio is not suitable for CPU-bound tasks because it cannot utilize multiple cores due to Python's Global Interpreter Lock (GIL).

2. **Threading**: The threading module is also suitable for `I/O-bound tasks`, and it can be `simpler to use` than asyncio for straightforward cases. However, due to the GIL, it's not effective for CPU-bound tasks. Also, managing a large number of threads can lead to significant overhead.

3. **Multiprocessing**: This module is effective for CPU-bound tasks because it bypasses the GIL by using separate processes instead of threads, allowing your program to utilize multiple cores. However, `inter-process communication` can be slower and more complex than inter-thread communication, and there is a `higher overhead` associated with starting a new process compared to starting a new thread.

In summary, asyncio, threading, and multiprocessing each have their strengths and are better suited to different types of tasks. It's important to understand the nature of the tasks your program will be performing in order to choose the most appropriate tool.

### Note on performance

Asyncio creates `a single thread` and uses an `event loop` to manage tasks, while the threading module creates a `separate thread for each task`. This allows multiple tasks to run in parallel, if possible, but it also means that each thread consumes system resources. Managing a large number of threads can lead to significant `overhead`, as each thread consumes system resources. This can become a bottleneck when dealing with a large number of concurrent tasks.

Hence in this case, asyncio would be a better choice. However, it's important to note that asyncio requires a different programming style (`asynchronous`, using `coroutines` and the `async/await` syntax), which can be more complex than traditional multi-threading.

### Additional modules to explore

There are several other popular libraries in Python for concurrent programming that offer different features and performance characteristics. Here are a few:

1. **concurrent.futures**: This module is part of the standard library and provides a high-level interface for asynchronously executing callables. It provides a simple way to manage threads or processes, and also provides a way to handle timeouts, cancelling tasks, and getting results back from functions.

2. **greenlet**: This is a third-party library that provides lightweight "green" threads, also known as coroutines. Greenlets run in the same thread and are scheduled cooperatively, which means they provide a way to write concurrent code in a sequential style. However, they do not utilize multiple cores.

3. **gevent**: This is a third-party library that provides a high-level synchronous API on top of the libev or libuv event loop and greenlet. It's designed for high concurrency I/O-bound workloads and can handle thousands of network connections in a single thread.

4. **Twisted**: This is a third-party library that is an event-driven networking engine. It supports TCP, UDP, SSL/TLS, IP multicast, Unix domain sockets, a large number of protocols, and much more. It's designed for high concurrency I/O-bound workloads.

5. **Tornado**: This is a third-party library that provides a web server and an asynchronous networking library, which can scale to tens of thousands of open connections, making it ideal for long polling, WebSockets, and other applications that require a long-lived connection to each user.

Each of these libraries has its own strengths and weaknesses, and the best one to use depends on the specific requirements of your application.

## Resources

- [What Is the Python Global Interpreter Lock (GIL)?](https://realpython.com/python-gil/)
- [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) package
