# Java Profilers

JVM generates a lot of events in either of the categories below:

* **Instant events** - one time events that have a timestamp and event data. Example: Exception events, Class load events, Object allocation events.
* **Duration events** - provide start time and end time of an activity. Example: Garbage collection, monitor wait, monitor contended.

JVM also has profiling functions to provide data on JVM internal state. Example: `getThreadState()`, `getAllThreads()`, `getStackTrace()` and `getAllStackTraces()`. All these functions are called requestable events by Java Flight Recorder.

Java profilers monitor JVM execution at the bytecode level. They can:

* Passively listen to JVM events
* Actively query JVM stats
* Modify bytecode

## Profiling activities

* **CPU profiling** - finds what methods run the most frequently and use the most CPU time. Such methods are called Hot methods. This information can be retrieved either by sampling or instrumentation.
* **Memory profiling** - concerned with understanding what objects are using up memory and how memory is freed.
* **Thread profiling** - concerned with what states threads are in and why.
* I/O profiling

## Profiling Metrics

Java profilers provide information on:

* thread execution and locks
* heap memory usage
* garbage collection
* hot methods
* exceptions
* class loading
* etc.

## Tools

* JProfiler
* Yourkit Java Profiler
* Java VisualVM
* Netbeans Profiler
* Java Flight Recorder
* Application Performance Management products
