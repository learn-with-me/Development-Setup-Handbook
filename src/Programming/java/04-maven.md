# Maven

Maven is a build management tool capable of bundling the project and effectively handle dependency management.

## Official Documentation

* Apache Maven [Guides](http://maven.apache.org/guides/)
* Apache Maven [POM reference](https://maven.apache.org/pom.html)
* Sonatype | [Maven: The Complete Reference](https://books.sonatype.com/mvnref-book/reference/index.html)

## Installation

Best way to install would be through [sdkman](./01-version-manager.md).

```sh
# Option 1
$ sdk install maven

# Option 2
$ brew install maven
or
$ brew install maven@3.3

# Option 3
# Download and install from http://maven.apache.org/download.cgi
$ tar xzvf apache-maven-3.5.0-bin.tar.gz
$ cp -R apache-maven-3.5.0 /opt/
$ export PATH=/opt/apache-maven-3.5.0/bin:$PATH
$ mvn -v
```
