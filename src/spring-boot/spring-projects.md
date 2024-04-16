# Spring Projects

`Spring Boot` consists of a set of libraries (called starters) that provide default application templates that can be customized easily to quickly develop multiple types of stand-alone, production-grade Spring-based applications.

`Spring Framework` consists of a set of libraries that provide support for dependency injection, transaction management, data access, messaging, and other core functionalities for any type of application. The Spring Framework now includes the Spring WebFlux framework that represents the Spring reactive-stack designed to build fully non-blocking, with back-pressure support reactive applications on servers such as Netty, Undertow, and Servlet 3.1+ containers.

`Spring Data` consists of a set of libraries that provide a consistent programming model for accessing various databases both relational (e.g., MySQL and Oracle) and nonrelational (e.g., MongoDB and CouchBase). Support for in-memory databases (e.g., H2 and MongoDB) is included, which is pretty useful for testing applications without the drag of a concrete database. Also, Spring Data R2DBC makes it easy to access reactive databases.

`Spring Security` provides the ability to secure applications easily, with a simple model for authentication and authorization.

`Spring Cloud` provides a set of common tools for writing microservices applications destined to run in distributed systems.

`Spring Cloud Data Flow` provides a set of common tools for streaming and batch processing of data between microservices running in Cloud Foundry and Kubernetes.

`Spring Integration` provides support for building Spring applications that make use of lightweight messaging and integrate with external systems via declarative adapters.

`Spring Session` provides an API and implementations for managing a user’s session information.

`Spring HATEOAS` provides some APIs to ease creating REST representations that follow the HATEOAS principle when working with Spring and especially Spring MVC. Some developers/architects consider that the hypermedia5 pollutes the REST data and a better solution is to use Swagger6 to expose (and document) an application’s API or Spring REST Docs.

`Spring for GraphQL` provides the tools to build Spring applications on GraphQL Java. GraphQL7 is a query language to retrieve data from a server.

`Spring REST Docs` provides the tools to expose and document a Spring application’s API.

`Spring Batch` is a framework that provides the tools to build lightweight and robust Spring applications that handle immense volumes of data.

`Spring AMQP` provides the tools to build AMQP-based messaging solutions using Spring.

`Spring CredHub` is part of the Spring Cloud project family and provides client-side support for storing, retrieving, and deleting credentials from a CredHub server running in a CloudFoundry platform.

`Spring Flo` is a JavaScript library that offers a basic embeddable HTML5 visual builder for pipelines and simple graphs. Spring Cloud Data Flow is an extension of this project.

`Spring for Apache Kafka` provides tools for building Kafka-based messaging solutions using Spring.

`Spring LDAP` is a library to simplify LDAP programming in Java, built on the same principles as Spring JDBC.

`Spring Shell` provides the tools to build a full-featured shell (aka command line) application by depending on the Spring Shell jars and adding their own commands (which come as methods on Spring beans).

`Spring Statemachine` is a framework for application developers to use state machine concepts with Spring applications.

`Spring Vault` provides familiar Spring abstractions and client-side support for accessing, storing, and revoking secrets. It offers both low-level and high-level abstractions for interacting with HashiCorp’s Vault8, freeing the user from infrastructural concerns.

`Spring Web Flow` extends Spring MVC to provide the tools for implementing the "flows" of a web application. A flow encapsulates a sequence of steps that guide a user through the execution of some business task. It spans multiple HTTP requests, has state, deals with transactional data, is reusable, and may be dynamic and long-running in nature.

`Spring Web Services` (Spring-WS) is a product of the Spring community focused on creating document-driven web services. Spring Web Services aims to facilitate contract-first SOAP service development, allowing for the creation of flexible web services using one of the many ways to manipulate XML payloads.

`Spring Native` (currently still considered experimental, but quicky being adopted in the industry) provides support for compiling Spring applications to native executables using the GraalVM native-image compiler.

`Spring Initializr` (not actually a project, but good to know), available at https://start.spring.io, provides a quick start for creating custom Spring Boot projects completely configurable according to the developer’s necessities: programming language, build tool, Spring Boot version, and project requirements (database access, web access, event messaging, security, etc.).

## Resources

* [Spring Projects](https://spring.io/projects) ([GitHub](https://github.com/spring-projects) + [Experimental](https://github.com/spring-projects-experimental))
* [Spring Boot + Projects](https://spring.io/projects/spring-boot) official documentation
* Book | [Pro Spring 6 with Kotlin](https://link.springer.com/chapter/10.1007/978-1-4842-9557-1_1)
* [Jackson library](https://github.com/FasterXML/jackson)
