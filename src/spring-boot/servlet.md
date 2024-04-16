# Servlet

A Servlet is used to extend the capabilities of servers that host applications, accessed via request-response programming model.

Java Servlet technology defines HTTP-specific servlet classes. The `javax.servlet` and `javax.servlet.http` packages provide interfaces and classes for writing servlets. Servlet in "javax.servlet" package declares three essential methods for the life cycle of a servlet — init(), service(), and destroy().

## Servlet Container

Servlets run in a servlet container which handles the networking side (e.g. parsing an HTTP request, connection handling etc). Example, Tomcat.

## ServletInputStream

ServletInputStream class is a component of Java package `javax.servlet`, It is an abstract class that provides an input stream for reading binary data from a client request, including an efficient readLine method for reading data one line at a time.
