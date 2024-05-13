---
tags:
  - python-package
  - concurrency
  - parallelism
---

# multiprocessing

With CPU-intensive Python applications, the usual solution is to use multiple processes, and let the OS manage them. Python has a [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) module for this.

`multiprocessing` is a package that supports spawning processes using an API similar to the threading module. The multiprocessing package offers both local and remote concurrency, effectively side-stepping the Global Interpreter Lock by using subprocesses instead of threads. Due to this, the multiprocessing module allows the programmer to fully leverage multiple processors on a given machine.

## Single-core CPU

Single-core does not mean single process for Python. The multiprocessing module in Python creates separate processes, which are independently scheduled by the operating system. This means that even on a single-core CPU, the operating system will switch between the processes, giving each a slice of CPU time. This is known as `context switching` and it gives the illusion of simultaneous execution.

## Multi-core CPU

The benefits of multiprocessing are more pronounced on a multi-core CPU, where each process can run on a separate core truly in parallel. On a single-core CPU, the overhead of context switching between processes can sometimes make multiprocessing less efficient than single-threaded execution for CPU-bound tasks. 

## Processes per CPU

The number of processes that can be started on a single-core CPU is not directly limited on a single core. The operating system's scheduler is responsible for managing processes and threads, and it can handle many processes at once, on a single-core CPU.

The actual limit on the number of processes is determined by the operating system and system resources such as memory.

For example, on a Unix-like system, you can use the `ulimit -u` command to check the limit on the number of user processes. On newer mac machines, I saw this command returning 2784!

Theoretically create as many `multiprocessing.Process` objects as you want, but the actual number that can run effectively will depend on your system's resources. If you create too many, you may run into issues with system performance or hit system-imposed limits.

> Note: The `ulimit -u` command provides the limit on the number of user processes for the entire system, not per CPU core. There isn't a direct way to get a limit per CPU core because the operating system's scheduler manages how processes are distributed across cores, and it doesn't set a limit per core. Instead, it dynamically schedules processes across all available cores based on process priority and current system load.

## Inter-process communication (IPC)

IPC is facilitated through several mechanisms, including:

1. **Queues**: The multiprocessing module provides a `Queue` class that is a near clone of `queue.Queue`. It can be used to pass messages between processes. Queues are thread and process safe.
2. **Pipes**: The Pipe() function returns a pair of connection objects connected by a pipe which by default is duplex (two-way). The two connection objects returned by `Pipe()` represent the two ends of the pipe. Each connection object has `send()` and `recv()` methods.
3. **Shared Memory**: Data can be stored in a shared memory map using `Value` or `Array`. For example, a `multiprocessing.Value('d', 0.0)` creates a double precision float in shared memory, and `multiprocessing.Array('i', range(10))` creates an array of integers in shared memory.
4. **Server process**: A manager object returned by `Manager()` controls a server process which holds Python objects and allows other processes to manipulate them using proxies.

```python
# Example of using a Queue for IPC
from multiprocessing import Process, Queue

# the function puts some data into the queue, and this data is then retrieved in the main process.
def f(q):
    q.put([42, None, 'hello'])

if __name__ == '__main__':
    q = Queue()
    p = Process(target=f, args=(q,))
    p.start()
    print(q.get())    # prints "[42, None, 'hello']"
    p.join()
```

## Sample code

```python
from multiprocessing import Process

def print_numbers():
    for i in range(10):
        print(i)

def print_letters():
    for letter in 'abcdefghij':
        print(letter)

p1 = Process(target=print_numbers)
p2 = Process(target=print_letters)

p1.start()
p2.start()

p1.join()
p2.join()
```
