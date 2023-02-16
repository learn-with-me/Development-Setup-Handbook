# Application monitoring & Performance testing

With better hardware, an application with perform better. However before it comes to that, there are several improvements that can be done on the application itself consuming resources. 

## Performance bottlenecks - Hardware Resources

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

> Fact: Sequential data access is generally faster than random access

## Performance bottlenecks - Software Resources

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

## Performance Testing Tools - OS

* Linux tools
  * vmstat - CPU utilization
    * Command: vmstat 1 10
    * CPU can be idle if doing nothing. However it can also be idle if the running application is blocked due to waiting on a lock or waiting on an I/O
  * iostat - disk I/O saturation \(install sysstat if iostat not available\)
    * Command: iostat -xm
* Windows tools
  * typeperf
* Other monitoring tools
  * netstat
  * nicstat
  * typeperf
  * sar
  * GUI tools
* Explore for Mac ------
  * vmmap

### Monitoring at a later time

All the tools discussed above give you stats on the current time. If there is a need to look at these stats over time or between specific timestamp, these stats needs to be exported to additional tools. 

More to come in this section................

## Application Performance Metrics

Performance is a key usability and quality metric. Phrases like making fast and improving scalability are vague and subjective and don't make very good performance targets. As a result, the industry has come up with widely accepted terms for quantifying performance:

* **Latency \(Response time\)** - amount of time in ms, required to complete a unit of work
* **Elapsed time** - measures time taken for a batch of operations to complete
* **Throughput** - amount of work an application can accomplish per unit of time \(seconds\)

### Differences between monitoring and performance improvement

## Production Monitoring

* Operations activity
* Collect and aggregate metric data
* Metric data storage
* Analysis, visualization and alerting

Production monitoring is broken into three parts

* Collect
  * Dropwizard metrics
  * Micrometer metrics
  * Netflix Spectator
  * Google OpenCensus
  * Prometheus Lib
* Store
  * InfluxDB
  * ElasticSearch
  * Graphite
  * OpenTSDB
  * Prometheus TSDB
  * Other commercial tools like DataDog, etc
* Analyze/Visualize
  * Grafana
  * Kibana
  * JMX tools
  * Prometheus dashboards

## Performance Testing

* Development activity
* Define application/component under test
* Generate load against the application
* Analyze results

## Java Performance

### Topics - Base

* Application monitoring and performance testing
* Java profilers
* JVM tuning
* Search & Data structures \(performance of Java Streams\)
* Memory management
* Optimizing concurrent code
  * how to size a thread pool
  * how to use fork-joint pool
  * how to minimize lock contention
* Avoid doing expensive operations

### Topics - Advanced

* Microbenchmarking - use Java microbenchmarking harness library
* Statistical measurements
* Database query tuning
* Concurrency basics

### Performance Testing Tools - Java

* JMC \(Java Mission Control\) - tool for collecting low level and detailed runtime information from a JVM. JMC contains a graphical UI for Java Flight Recorder. JMC can connect to both local and remote processes, provided JMX monitoring is enabled on the server. JMC integrates well with these tools:
  * jstat \(JVM statistics\)
  * jinfo \(JVM configuration info\)
  * jmap \(Java memory map\)
  * jstack \(stack traces\)
  * jconsole \(JMX MBeans\)
    ```
    If you don't find jmc in your jdk, you could be using OpenJDK, install from http://jdk.java.net/jmc/

    # Enable JMX monitoring on Java process
    $ java -Dcom.sun.management.jmxremote
        -Dcom.sun.management.jmxremote.port=<XXXX>
        -Djava.rmi.server.hostname=<X.X.X.X>
        -Dcom.sun.management.jmxremote.authentication=false
        -Dcom.sun.management.jmxremote.ssl=false
    ```
* jcmd - command line equivalent of Java Mission Control. The only difference is that it cannot connect to remote processes. Hence it is useful when you want to monitor process on a remote server however are unable to enable JMX monitoring on the server. If you have ssh access to the remote server, you can ssh into it and run **jcmd** to get all the information you would've gotten via Mission control.
* jMeter - tool for load testing and analyzing the performance of web apps

### Java Profilers

JVM generates a lot of events in either of the categories below:

* **Instant events** - one time events that have a timestamp and event data. Example: Exception events, Class load events, Object allocation events.
* **Duration events** - provide start time and end time of an activity. Example: Garbage collection, monitor wait, monitor contended.

JVM also has profiling functions to provide data on JVM internal state. Example: getThreadState\(\), getAllThreads\(\), getStackTrace\(\) and getAllStackTraces\(\). All these functions are called requestable events by Java Flight Recorder.

Java profilers monitor JVM execution at the bytecode level. They can:

* Passively listen to JVM events
* Actively query JVM stats
* Modify bytecode

Profiling activities are:

* **CPU profiling** - finds what methods run the most frequently and use the most CPU time. Such methods are called Hot methods. This information can be retrieved either by sampling or instrumentation.
* **Memory profiling** - concerned with understanding what objects are using up memory and how memory is freed.
* **Thread profiling** - concerned with what states threads are in and why.
* I/O profiling

Java profilers provide information on:

* thread execution and locks
* heap memory usage
* garbage collection
* hot methods
* exceptions
* class loading
* etc.

### Tools

* JProfiler
* Yourkit Java Profiler
* Java VisualVM
* Netbeans Profiler
* Java Flight Recorder
* Application Performance Management products
