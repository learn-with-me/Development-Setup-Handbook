# Filters & Interceptors

## Filter

Filter components are executed by the servlet container for each incoming HTTP request and for each HTTP response. Requests always first pass through Filter instances, before reaching a Servlet.

If the application has multiple custom filters, the order of execution can be defined with `@Order` annotation.

## Interceptor

Spring Interceptors are similar to Servlet Filters. An interceptor just allows custom pre-processing with the option of prohibiting the execution of the handler itself, and custom post-processing, having access to Spring Context.

### HandlerInterceptor

HandlerInterceptor instances are executed as part of the request handling inside the DispatcherServlet (which implements `javax.servlet.Servlet`).

### HandlerInterceptor Methods

* prehandle() – called before the execution of the actual handler
* postHandle() – called after the handler is executed
* afterCompletion() – called after the complete request is finished and the view is generated

These methods return a boolean value. It tells Spring to further process the request (true) or not (false). Returning `true` to send the request further to the handler method. Returning `false` tells Spring to stop the execution.

### Registering HandlerInterceptor

Every interceptor must be registered by overriding `addInterceptors()` method of `WebMvcConfigurer` interface.

### Filters vs HandlerInterceptors

* Filter is related to the Servlet API and HandlerIntercepter is a Spring specific concept.
* Interceptors will only execute after Filters.
* Fine-grained pre-processing tasks are suitable for HandlerInterceptors (authorization checks, etc.)
* Content handling related or generic flows are well-suited for Filters (such as multipart forms, zip compression, image handling, logging requests, authentication etc.)
* Interceptor’s postHandle method will allow you to add more model objects to the view but you can not change the HttpServletResponse since it's already committed.
* Filter’s doFilter method is much more versatile than Interceptor’s postHandle. You can change the request or response and pass it to the chain or even block the request processing.
* A HandlerInterceptor gives more fine-grained control than a filter because you have access to the actual target “handler”. You can even check if the handler method has a specific annotation.

## Blog References

* [HandlerIntercepter](https://ozenero.com/kotlin-springmvc-handlerinterceptor-spring-boot) | ozenero blog
