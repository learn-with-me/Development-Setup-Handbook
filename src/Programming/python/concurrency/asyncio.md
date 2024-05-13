---
tags:
  - python-package
  - concurrency
  - parallelism
  - async
  - await
---

# asyncio

[asyncio](https://docs.python.org/3/library/asyncio.html) is a library to write single-threaded concurrent code using `coroutines`, `multiplexing I/O access over sockets` and other resources, running network clients and servers, and other related primitives, using the `async/await` syntax.

asyncio is used as a foundation for multiple Python asynchronous frameworks that provide high-performance network and web-servers, database connection libraries, distributed task queues, etc. It is often a perfect fit for `IO-bound` and `high-level structured network code`.

It provides a set of high-level APIs to:

* `run Python coroutines` concurrently and have full control over their execution;
* perform `network IO and IPC`;
* control `subprocesses`;
* distribute tasks via `queues`;
* `synchronize` concurrent code;

Additionally, there are low-level APIs for library and framework developers to:

* create and manage `event loops`, which provide asynchronous APIs for `networking`, running `subprocesses`, handling `OS signals`, etc;
* implement efficient protocols using `transports`;
* `bridge` callback-based libraries and code with async/await syntax.

## Coroutines

`Coroutines` in Python are a form of asynchronous programming and are a feature of the asyncio library. They are a special type of function that can be `paused` and `resumed`, allowing Python to handle other tasks in the meantime. This is particularly useful for I/O-bound tasks, where waiting for input/output operations can lead to significant idle time.

Coroutines are `lighter than threads` and can be `more efficient for I/O-bound tasks`. They allow you to write asynchronous code in a sequential style. However, they are `not suitable for CPU-bound tasks` as they do not utilize multiple cores of the CPU.

Coroutines are defined using async def and are run by calling await on them. Here's a simple example:

```python
import asyncio

async def hello_world():
    print("Hello")
    await asyncio.sleep(1)
    print("World")

# Running the coroutine
asyncio.run(hello_world())
```

When `await asyncio.sleep(1)` is called, the coroutine pauses, allowing other tasks to run in the meantime.

There is no hard limit on the number of coroutines you can create. Each coroutine takes up a small amount of memory, so the limit would be when your system runs out of memory to allocate for new coroutines. However, this number is typically quite large, and you're more likely to hit other system limits or performance issues before you hit this one.

Having a large number of coroutines does not necessarily mean your program will perform better. The optimal number depends on many factors, including the nature of the tasks being performed and the specifics of the system the program is running on.

## Sample code

```python
import asyncio

async def print_numbers():
    for i in range(10):
        print(i)
        await asyncio.sleep(1)

async def print_letters():
    for letter in 'abcdefghij':
        print(letter)
        await asyncio.sleep(1)

task1 = asyncio.create_task(print_numbers())
task2 = asyncio.create_task(print_letters())

await task1
await task2
```

## Resources

- [asyncio](https://docs.python.org/3/library/asyncio.html)
