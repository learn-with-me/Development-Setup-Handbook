# Performance bottlenecks

An application can do "more" with better hardware, but it won't necessarily perform better. Scaling up the hardware is one way to solve the problem, but if there are performance bottlenecks, even scaling up may not always help. Hence this would be the time to look for improvements that can be done on the application itself consuming resources.

> Note: Before even solving a performance issue, make sure that one exists in the first place.

## Hardware Resources

> To analyze a system's performance, we should examine the utilization, saturation and errors of every significant resource that makes up the system -- Brendan Gregg

Here are the metrics to look for when analyzing performance on a hardware: 

* **Utilization** - proportion of a resource that is used or the average time that the resource was busy servicing work
    * CPU cycle
    * RAM capacity
    * Disk capacity
    * Disk I/O
    * Network I/O
* **Saturation** - degree to which the resource has extra work that it can't service
    * CPU run queue
    * Disk  swap space
* **Errors** - count of error events for a resource
    * Error handling
    * Retries
    * Fewer pool  resources

Performance is the amount of work accomplished by a computer system. This work can be defined at various level of granularity like:

* Requests per second
* Queries per second
* Frames per second
* Operations per second
* Instructions per second

> Fact: Sequential data access is generally faster than random access. This is because the disk-head has to travel lesser distance in accessing the data.

## Software Resources

* Thread pools
    * Utilization - number of threads currently executing a task
    * Saturation -  number of items in the thread pool work queue
* Locks
    * Utilization - time the lock was held
    * Saturation - number of threads queued and waiting on the lock
* Threads/File descriptors
    * Utilization - number of threads or file descriptors in use
    * Saturation - number of items waiting for the thread of file descriptor to be allocated
    * Errors - number of allocation failures
