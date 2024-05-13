# Serialization

`Object serialization` is the process of saving an object's state to a sequence of bytes, as well as the process of rebuilding those bytes into a live object at some future time. The Java Serialization API provides a standard mechanism for developers to handle object serialization.

An object is marked serializable by implementing the `java.io.Serializable` interface, which signifies to the underlying API that the object can be flattened into bytes and subsequently inflated in the future.

You could use the default protocol as is, or customize it, or even write your own protocol to perform serialization.

## References

* Oracle | [Discover the secrets of the Java Serialization API](https://www.oracle.com/technical-resources/articles/java/serializationapi.html)
    * Sourced from [here](https://www.infoworld.com/article/2076120/flatten-your-objects.html) | InfoWorld

### Additional Reads

* Oracle | [Java Object Serialization Specification: Contents](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/)
    * Oracle | [Java Object Serialization Specification: 1 - System Architecture](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/serial-arch.html)
    * Oracle | [Java Object Serialization Specification: 2 - Object Output Classes](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/output.html)
    * Oracle | [Java Object Serialization Specification: 3 - Object Input Classes](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/input.html)
    * Oracle | [Java Object Serialization Specification: 4 - Class Descriptors](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/class.html)
    * Oracle | [Java Object Serialization Specification: 5 - Versioning of Serializable Objects](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/version.html)
    * Oracle | [Java Object Serialization Specification: 6 - Object Serialization Stream Protocol](https://docs.oracle.com/en/java/javase/18/docs/specs/serialization/protocol.html)
* Oracle | [Serialization Filtering](https://docs.oracle.com/en/java/javase/19/core/serialization-filtering1.html)
* Oracle | [Object Serialization: Frequently Asked Questions](https://www.oracle.com/java/technologies/javase/serializationfaq-jsp.html)
* InfoWorld | [The Java serialization algorithm revealed](https://www.infoworld.com/article/2072752/the-java-serialization-algorithm-revealed.html)
* InfoWorld | [Intro to MicroStream: Super-fast serialization in Java](https://www.infoworld.com/article/3668556/intro-to-microstream-super-fast-serialization-in-java.html)
* InfoWorld | [JavaOne 2011: Serialization: Tips, Tricks, and Techniques](https://www.infoworld.com/article/2074420/javaone-2011--serialization--tips--tricks--and-techniques.html)
* InfoWorld | [Signed and sealed objects deliver secure serialized content](https://www.infoworld.com/article/2076237/signed-and-sealed-objects-deliver-secure-serialized-content.html)
* Oracle | [JDK 18 Documentation](https://docs.oracle.com/en/java/javase/18/)
* Oracle | [JDK 18 Specs](https://docs.oracle.com/en/java/javase/18/docs/specs/)
* Oracle | [Java 18 Core Libraries Developer Guide](https://docs.oracle.com/en/java/javase/19/core/index.html)
