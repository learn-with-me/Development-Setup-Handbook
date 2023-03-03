# Monitoring

## What is JMX?

The `Java virtual machine (Java VM)` has built-in `instrumentation` that enables you to monitor and manage it using the `Java Management Extensions (JMX)` technology. These built-in management utilities are often referred to as `out-of-the-box management tools` for the Java VM. You can also monitor any appropriately instrumented applications using the `JMX API`.

## Enabling JMX

To enable and configure the out-of-the-box JMX agent so that it can monitor and manage the Java VM, you must set certain system properties when you start the Java VM. A full set of out-of-the-box management properties described [here](https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html#gdevf). Alternatively you can use a tool that complies to the JMX specification, such as [JConsole](https://en.wikipedia.org/wiki/JConsole).

## Metrics Library

Instrumentation can be achieved by using `native JMX` or using a modular project like [Metrics](https://metrics.dropwizard.io/4.2.0/) (GitHub [repo](https://github.com/dropwizard/metrics)). `Metrics` provides a powerful way to measure the behaviour of your critical components and reporting them to a variety of systems like, JConsole, or making them available through a web server. To install Metrics, we only have to add metrics dependency.

> Note: If you are planning to use `Metrics` in production code, it is highly recommended that you put metrics logic into `AOP` whenever possible, to avoid mixing instrumentation code with business logic.

`Metrics` we can use 6 types of metrics:

1. **Gauges**: an instantaneous measurement of a discrete value.
2. **Counters**: a value that can be incremented and decremented. Can be used in queues to monitorize the remaining number of pending jobs.
3. **Meters**: measure the rate of events over time. You can specify the rate unit, the scope of events or event type.
4. **Histograms**: measure the statistical distribution of values in a stream of data.
5. **Timers**: measure the amount of time it takes to execute a piece of code and the distribution of its duration.
6. **Healthy checks**: as his name suggests, it centralize our service’s healthy checks of external systems.

## References

* [What Is JMX Monitoring?](https://www.logicmonitor.com/blog/what-is-jmx-monitoring) (blog) | LogicMonitor
* Chapter 2 - [Monitoring and Management Using JMX Technology](https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html) | Oracle
* Chapter 3 - [Using JConsole](https://docs.oracle.com/javase/8/docs/technotes/guides/management/jconsole.html) | Oracle
    * [The Java Monitoring and Management Console (jconsole)](https://openjdk.org/tools/svc/jconsole/) | OpenJDK
* [Yammer Metrics, A new way to monitor your application](https://www.javacodegeeks.com/2012/12/yammer-metrics-a-new-way-to-monitor-your-application.html) (blog) | Java Code Geeks
* [Best Tools For JMX Monitoring](https://www.pcwdld.com/best-jmx-monitoring-tools) (blog)
* [Best JMX Monitoring Tools](https://www.netadmintools.com/best-jmx-monitoring-tools/) (blog)
* [10 Best JMX Monitoring Tools](https://www.itprc.com/best-jmx-monitoring-tools/)
* Book | [Testing Java Microservices: Using Arquillian, Hoverfly, AssertJ, JUnit, Selenium, and Mockito](https://www.amazon.com/Testing-Java-Microservices-Arquillian-Hoverfly/dp/1617292893)
