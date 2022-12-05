# Java Version Manager [SDKMan]

[sdkman](https://sdkman.io/) is a great tool for managing parallel versions of multiple software development kits on most Unix based systems.

### Installation

```
$ curl -s "https://get.sdkman.io" | bash
$ source "$HOME/.sdkman/bin/sdkman-init.sh"
$ sdk version
```

### List Available Candidates

```
$ sdk list
$ sdk list java
$ sdk list groovy
```

### JDK Installation

```
# OpenJDK
$ sdk install java x.y.z-open

# Amazon Coretto
$ sdk install java x.y.z-amzn
```

### SDK Installation

```
# Spring Boot
$ sdk install springboot

# Scala
$ sdk install scala
$ sdk install scala 3.2.0
```

### Remove a specific version

```
$ sdk uninstall scala 3.2.0
```

### Use a version

```
$ sdk use scala 3.2.0
```

### Default a version

```
# Make a given version the default
$ sdk default scala 3.2.0
```

### Check current version

```
$ sdk current java

# To see what is currnetly in use for all candidates installed
$ sdk current
```

## References

- SDKMan [usage](https://sdkman.io/usage)
- 
