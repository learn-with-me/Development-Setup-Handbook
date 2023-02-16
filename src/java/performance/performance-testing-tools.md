# Performance Testing Tools

## Operating System

### Linux tools

#### vmstat

For measuring CPU utilization.

[vmstat](https://linux.die.net/man/8/vmstat) reports information about processes, memory, paging, block IO, traps, and cpu activity.

```sh
$ vmstat 1 10
```

CPU can be idle if doing nothing. However it can also be idle if the running application is blocked due to waiting on a lock or waiting on an I/O.

Refer:

* [How to use the vmstat command](https://phoenixnap.com/kb/vmstat-command)
* [vmstat command in Linux with Examples](https://www.geeksforgeeks.org/vmstat-command-in-linux-with-examples/)
* [Linux commands: exploring virtual memory with vmstat](https://www.redhat.com/sysadmin/linux-commands-vmstat)

#### iostat

For measuring disk I/O saturation.

The [iostat](https://linux.die.net/man/1/iostat) command is used for monitoring system input/output device loading by observing the time the devices are active in relation to their average transfer rates. The iostat command generates reports that can be used to change system configuration to better balance the input/output load between physical disks.

```sh
$ iostat -xm
```

> Note: install [sysstat](https://github.com/sysstat/sysstat) if iostat not available

Refer:

* [iostat command in Linux with examples](https://www.geeksforgeeks.org/iostat-command-in-linux-with-examples/)
* [How to use the Linux iostat command to check on your storage subsystem](https://www.techrepublic.com/article/how-to-use-the-linux-iostat-command-to-check-on-your-storage-subsystem/)

### MacOS tools

#### vmmap

[VMMap](https://learn.microsoft.com/en-us/sysinternals/downloads/vmmap) is a process virtual and physical memory analysis utility. It shows a breakdown of a process's committed virtual memory types as well as the amount of physical memory (working set) assigned by the operating system to those types.

```sh
$ vmmap --wide <pid>
$ vmmap --wide 10366
```

Refer:

* [How do you read the memory maps of a Mac process?](https://jvns.ca/blog/2018/01/26/mac-memory-maps/)
* [Viewing Virtual Memory Usage](https://developer.apple.com/library/archive/documentation/Performance/Conceptual/ManagingMemory/Articles/VMPages.html)
* Book | [Mac OS X in a Nutshell](https://www.amazon.com/Mac-OS-Nutshell-Jason-McIntosh/dp/0596003706)

### Windows tools

#### typeperf

The [typeperf](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/typeperf) command writes performance data to the command window or to a log file. To stop typeperf, press CTRL+C.

Refer:

* SS64 | [TypePerf.exe](https://ss64.com/nt/typeperf.html)

### Other monitoring tools

#### netstat

The [netstat](https://docs.oracle.com/cd/E19504-01/802-5753/6i9g71m3i/index.html) command generates displays that show network status and protocol statistics. You can display the status of TCP and UDP endpoints in table format, routing table information, and interface information. `netstat` displays various types of network data depending on the command line option selected.

#### nicstat

[nicstat](https://docs.oracle.com/cd/E86824_01/html/E54763/nicstat-1.html) prints network traffic statistics.

#### sar

Collect, report, or save system activity information. The [sar](https://linux.die.net/man/1/sar) command writes to standard output the contents of selected cumulative activity counters in the operating system.

Refer:

* [SAR command in Linux to monitor system performance](https://www.geeksforgeeks.org/sar-command-linux-monitor-system-performance/)

## Java / JVM

### JMC (Java Mission Control)
A tool for collecting low level and detailed runtime information from a JVM. JMC contains a graphical UI for Java Flight Recorder. JMC can connect to both local and remote processes, provided JMX monitoring is enabled on the server.

> Note: If you don't find jmc in your jdk, you could be using OpenJDK, install from [here](http://jdk.java.net/jmc/)

JMC integrates well with these tools:

* jstat \(JVM statistics\)
* jinfo \(JVM configuration info\)
* jmap \(Java memory map\)
* jstack \(stack traces\)
* jconsole \(JMX MBeans\)

```sh
# Enable JMX monitoring on Java process
$ java -Dcom.sun.management.jmxremote
    -Dcom.sun.management.jmxremote.port=<XXXX>
    -Djava.rmi.server.hostname=<X.X.X.X>
    -Dcom.sun.management.jmxremote.authentication=false
    -Dcom.sun.management.jmxremote.ssl=false
```

#### jstat

[jstat](https://docs.oracle.com/javase/7/docs/technotes/tools/share/jstat.html) (Java Virtual Machine Statistics Monitoring Tool)

### jcmd

jcmd is command line equivalent of `Java Mission Control`. The only difference is that it cannot connect to remote processes. Hence it is useful when you want to monitor process on a remote server however are unable to enable JMX monitoring on the server. If you have ssh access to the remote server, you can ssh into it and run **jcmd** to get all the information you would've gotten via Mission control.

### jMeter

A tool for load testing and analyzing the performance of web apps

## Stats over time

All the tools above give you stats for the current time. To look at the stats over time or between specific timestamp, these stats needs to be exported to additional tools. 

More to come in this section................
