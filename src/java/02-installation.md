# Installation

It is best to use a version manager instead of installing java directly, as jdk version requirements may change between projects.

## Installing JDK

Using [SDKMan](./01-version-manager.md)

```sh
# List all the versions available for Java
$ sdk list java

# Install latest stable version of Java
$ sdk install java

# Install specific version of Java
$ sdk install java x.y.z-open

# Switch to another version of Java (installed already locally)
$ sdk use java 11.0.1-open
```

### Verify Installation

```sh
# Prints the version of primary JDK
$ java -version

# Prints the version of primary Java compiler
$ javac -version

# List all JDK installed with path
$ /usr/libexec/java_home -V

# List out just the paths
$ /usr/libexec/java_home -V 2>&1 | grep -E "\d\.\d\.\d(_\d+)?.*," | cut -d , -f 1 | cut -c 5-
```

### Uninstall

```sh
# Remove the JDK
$ sudo rm -rf /Library/Java/JavaVirtualMachines/jdk<version>.jdk

# Remove plugins
$ sudo rm -rf /Library/PreferencePanes/Java*
$ sudo rm -rf /Library/Internet\ Plug-Ins/Java*
$ sudo rm -rf /Library/Java/*
$ sudo rm -rf /Library/LaunchAgents/com.oracle.java.Java-Updater.plist
$ sudo rm -rf /Library/PrivilegedHelperTools/com.oracle.java.JavaUpdateHelper
$ sudo rm -rf /Library/LaunchDaemons/com.oracle.java.Helper-Tool.plist
$ sudo rm -rf /Library/Preferences/com.oracle.java.Helper-Tool.plist
```

## Installing Add-Ons

```sh
# Java REPL
$ brew install javarepl            # Java REPL. Requires Java 8
```
