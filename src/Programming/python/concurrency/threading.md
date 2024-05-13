---
tags:
  - python-package
  - concurrency
  - parallelism
---

# threading

The `threading` module is used to `run multiple threads` (tasks, function calls) at the same time.

When a Python program is running a single thread, it's essentially using `only one CPU core`, even if multiple cores are available. The threading module allows a program to create multiple threads, which can run independently of each other. These threads can be `scheduled to run on different CPU cores`, thus `potentially` improving the performance of the program.

However, due to GIL, even though multiple threads might be scheduled on different CPU cores, only one of them can make progress at a time.

There won't be much performance improvement in compute-intensive tasks. However I/O-bound tasks will see significant performance improvement. By using multiple threads, a Python program can initiate an I/O operation on one thread, and while it's waiting for that operation to complete, it can switch to another thread and do some computation there. This way, the program can make progress on computation while waiting for I/O, thus improving its overall performance.

Python's threading module doesn't allow for true parallel execution of Python bytecodes due to the GIL, it can still provide benefits by allowing a program to make progress on computation while waiting for I/O operations to complete.

## Single-core CPU

Multiple threads can be created using the threading module even on a single-core CPU. The operating system's `scheduler` will handle the switching between threads, giving each thread a small `slice of CPU time`, giving the `illusion` of simultaneous execution. This is known as `concurrent execution` or `context switching`.

## Multi-core CPU

On a multi-core cpu, multiple threads can be executed simultaneously, one on each core, known as `parallel execution`. However, due to GIL only one thread can execute Python bytecodes at a time.

This means even though multiple threads might be scheduled on different CPU cores, only one of them can make progress at a time. The only way to gain performance on multi-core CPU is to use the `multiprocessing` module, which creates separate processes and thus bypasses the GIL, and providing better performance.

## Inter-thread communication

If you want to communicate between threads within the same process. The module's mechanisms include:

1. **Shared Variables**: Threads within the same process can communicate with each other by modifying shared variables. However, this can lead to race conditions if not managed properly. To avoid race conditions, you can use locks.
2. **Queues**: The `queue.Queue` class from the threading module can be used for safe communication between threads. It is thread-safe, which means it uses locks to prevent multiple threads from accessing or modifying the data at the same time.
3. **Events**: An event is a simple communication mechanism that allows one thread to signal one or more other threads that a certain event has occurred.
4. **Condition**: A condition variable is a more advanced version of an event object that allows a thread to not only wait for an event but also to atomically release a lock while waiting for the event.

```python
import threading
import queue

# The function takes items from the queue and processes them
# When there are no more items, it breaks the loop and ends.
def worker(q):
    while True:
        item = q.get()
        if item is None:
            break
        print(f'Working on {item}')
        q.task_done()

# The main function creates the threads and puts items in the queue.
def main():
    q = queue.Queue()
    threads = []
    for i in range(5):
        t = threading.Thread(target=worker, args=(q,))
        t.start()
        threads.append(t)

    for item in range(10):
        q.put(item)

    # block until all tasks are done
    q.join()

    # stop workers
    for i in range(5):
        q.put(None)
    for t in threads:
        t.join()

if __name__ == "__main__":
    main()
```

## Sample code

```python
import threading

def print_numbers():
    for i in range(10):
        print(i)

def print_letters():
    for letter in 'abcdefghij':
        print(letter)

t1 = threading.Thread(target=print_numbers)
t2 = threading.Thread(target=print_letters)

t1.start()
t2.start()

t1.join()
t2.join()
```

## Resources

- [threading](https://docs.python.org/3/library/threading.html) module constructs higher-level threading interfaces on top of the lower level `_thread` module.
