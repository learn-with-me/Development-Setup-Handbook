# Java

##### Installation

    Option 1
    Download and Install JDK from http://www.oracle.com/technetwork/java/javase/downloads/index.html
    Open terminal and make sure `echo $JAVA_HOME` returns Java path
    Otherwise in .bash_profile set it to something like /Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

    Option 2
    $ brew cask install java
    $ /usr/libexec/java_home        // Print out Java_Home location
    $ brew cask install homebrew/cask-versions/java8    # Installs Java 8

    NOTE:
    =====
    Before you opt for option 2, it needs more info here.
    brew made tools.jar missing from the lib folder for version 9.x. There is something different about this
    installation.

    JRE Path: /Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/
    JDK Path: /Library/Java/JavaVirtualMachines/jdk1.x.x_xxx.jdk/Contents/Home/

##### Uninstall

```
Remove the JDK
$ sudo rm -rf /Library/Java/JavaVirtualMachines/jdk<version>.jdk

Remove plugins
$ sudo rm -rf /Library/PreferencePanes/Java*
$ sudo rm -rf /Library/Internet\ Plug-Ins/Java*
$ sudo rm -rf /Library/Java/*
$ sudo rm -rf /Library/LaunchAgents/com.oracle.java.Java-Updater.plist
$ sudo rm -rf /Library/PrivilegedHelperTools/com.oracle.java.JavaUpdateHelper
$ sudo rm -rf /Library/LaunchDaemons/com.oracle.java.Helper-Tool.plist
$ sudo rm -rf /Library/Preferences/com.oracle.java.Helper-Tool.plist
```

##### Verification

```
$ java -version                            // Prints the version of primary JDK
$ javac -version                           // Prints the version of primary Java compiler

$ /usr/libexec/java_home -V                // List all JDK installed with path
$ /usr/libexec/java_home -V 2>&1 | grep -E "\d\.\d\.\d(_\d+)?.*," | cut -d , -f 1 | cut -c 5-        // Just paths
```

##### Add-Ons

```
Java REPL
$ brew install javarepl            # Java REPL. Requires Java 8
```

#### Switch between versions of Java

```
Install SDKMan
$ curl -s "https://get.sdkman.io" | bash
$ source "$HOME/.sdkman/bin/sdkman-init.sh"

Verify Installed version
$ sdk version

Install latest stable version of Java
$ sdk install java

Note: It can be used for other JDKs and SDKs, like example below
$ sdk install scala
Check https://sdkman.io/

List all the versions available for Java
$ sdk list java

Switch to another version of Java
$ sdk use java 11.0.1-open

Help!!
$ sdk man
```



