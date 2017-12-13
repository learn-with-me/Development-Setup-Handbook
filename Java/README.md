# Java

##### Installation

    Option 1
    Download and Install JDK from http://www.oracle.com/technetwork/java/javase/downloads/index.html
    Open terminal and make sure `echo $JAVA_HOME` returns Java path
    Otherwise in .bash_profile set it to something like /Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

    Option 2
    $ brew cask install java
    $ /usr/libexec/java_home        // Print out Java_Home location

    NOTE:
    =====
    Before you opt for option 2, it needs more info here.
    brew made tools.jar missing from the lib folder for version 9.x. There is something different about this installation.

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
$ brew install javarepl
```

###
