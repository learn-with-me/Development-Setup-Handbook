---
tags:
  - python-package
  - concurrency
  - parallelism
  - async
  - await
---

# asyncio

[asyncio](https://docs.python.org/3/library/asyncio.html) is a library to write concurrent code using the async/await syntax.

asyncio is used as a foundation for multiple Python asynchronous frameworks that provide high-performance network and web-servers, database connection libraries, distributed task queues, etc.

asyncio is often a perfect fit for IO-bound and high-level structured network code.

asyncio provides a set of high-level APIs to:

* `run Python coroutines` concurrently and have full control over their execution;
* perform `network IO and IPC`;
* control `subprocesses`;
* distribute tasks via `queues`;
* `synchronize` concurrent code;

Additionally, there are low-level APIs for library and framework developers to:

* create and manage `event loops`, which provide asynchronous APIs for `networking`, running `subprocesses`, handling `OS signals`, etc;
* implement efficient protocols using `transports`;
* `bridge` callback-based libraries and code with async/await syntax.
