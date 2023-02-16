# Gradle

Gradle is a build management tool capable of bundling the project and effectively handle dependency management.

## Official Documentation

* [Getting Started](https://gradle.org/guides/#getting-started) guides
* Official [User Manual](https://docs.gradle.org/current/userguide/userguide.html)
* Official [Community Resources](https://gradle.org/resources/)
* [Maven vs Gradle comparison](https://gradle.org/maven-vs-gradle/)
* [Gradle + Kotlin](https://gradle.org/kotlin/)
* [Gradle CLI completion](https://github.com/gradle/gradle-completion)
* [Gradle Wrapper](https://docs.gradle.org/8.0/userguide/gradle_wrapper.html)

## Installation

> In a lot of cases you may not need to install gradle globally. Instead your project may have a local gradle copy, that can be accessed in some cases by `$ ./gradlew -v`

Best way to install would be through [sdkman](./version-manager.md). Alternatively use `brew`.

```sh
# Option 1
$ sdk install gradle

# Option 2
$ brew install gradle
```

### Verify

```sh
# Display gradle version for global installation
$ gradle -v

# Display gradle version for local installation
$ ./gradlew -v

# List tasks
$ ./gradlew tasks
```

## Gradle Wrapper

If existing Gradle-based build uses the Gradle Wrapper, you can easily upgrade by running the `wrapper` task, specifying the desired Gradle version:

```sh
$ ./gradlew wrapper --gradle-version=8.0 --distribution-type=bin
```

Note that it is not necessary for Gradle to be installed to use the Gradle wrapper. The next invocation of `gradlew` or `gradlew.bat` will download and cache the specified version of Gradle.

