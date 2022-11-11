# Maven

Maven is a build management tool capable of bundling the project and effectively handle dependency management.

##### Official Documentation

```
http://maven.apache.org/guides/
https://maven.apache.org/pom.html
http://books.sonatype.com/mvnref-book/reference/
```

##### Installation

Best way to install would be through [sdkman](./version-manager.md). Alternatives below.

```
Option 1
Download and install from http://maven.apache.org/download.cgi
$ tar xzvf apache-maven-3.5.0-bin.tar.gz
$ cp -R apache-maven-3.5.0 /opt/
$ export PATH=/opt/apache-maven-3.5.0/bin:$PATH
$ mvn -v

Option 2
$ brew install maven@3.3

Option 3
$ brew install maven
```
