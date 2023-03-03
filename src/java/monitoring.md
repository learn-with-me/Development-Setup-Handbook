# Monitoring

The `Java virtual machine (Java VM)` has built-in `instrumentation` that enables you to monitor and manage it using the `Java Management Extensions (JMX)` technology. These built-in management utilities are often referred to as `out-of-the-box management tools` for the Java VM. You can also monitor any appropriately instrumented applications using the `JMX API`.

To enable and configure the out-of-the-box JMX agent so that it can monitor and manage the Java VM, you must set certain system properties when you start the Java VM. A full set of out-of-the-box management properties described [here](https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html#gdevf). Alternatively you can use a tool that complies to the JMX specification, such as [JConsole](https://en.wikipedia.org/wiki/JConsole).

## References

* [What Is JMX Monitoring?](https://www.logicmonitor.com/blog/what-is-jmx-monitoring) (blog) | LogicMonitor
* Chapter 2 - [Monitoring and Management Using JMX Technology](https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html) | Oracle
* Chapter 3 - [Using JConsole](https://docs.oracle.com/javase/8/docs/technotes/guides/management/jconsole.html) | Oracle
    * [The Java Monitoring and Management Console (jconsole)](https://openjdk.org/tools/svc/jconsole/) | OpenJDK
* [Best Tools For JMX Monitoring](https://www.pcwdld.com/best-jmx-monitoring-tools) (blog)
* [Best JMX Monitoring Tools](https://www.netadmintools.com/best-jmx-monitoring-tools/) (blog)
* [10 Best JMX Monitoring Tools](https://www.itprc.com/best-jmx-monitoring-tools/)
