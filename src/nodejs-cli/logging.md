# Logging in Node.js

Logging help you know what the heck is going on in the application. However regardless of what you choose, logging affects performance of the application/request in some form, because that's additional work the process will have to do. There is no escaping that. However what can be done is, to find an effective strategy to make the work more efficient and less overhead.

One of the ways to log is using `console.log`, which is ready-to-use, and without any other dependency or configuration. Hence it makes is so much tempting to use it without thinking. By default, writes to `stdout` and `stderr`.

The `console.log` function is a synchronous process, meaning it is a blocking call, which directly adds latency on the action being performed, and in worst case can break the execution flow of the request because of accidental code. Hence choosing another implementation/library early on saves from a trouble down the road.

## What do we get from libraries?

- Latency improvement
- Ability to write logs to stream-like destinations (other than stdout and stderr), example: writing to a file
- Logging to multiple destinations
- Data serialization and redaction from logs
- Control over log visibility by level. In some cases, without having a need to reload a running application
- Safety from bad code

## Popular Libraries

- [Bunyan](https://github.com/trentm/node-bunyan)
- [Morgan](https://github.com/expressjs/morgan)
- [Pinojs](https://getpino.io/) - destination based on [sonic-boom](https://github.com/pinojs/sonic-boom)
- [Winston](https://github.com/winstonjs/winston)

## Anything better exists?

Logging using one of the libraries is great, but it's even better if APM tools do this automatically.

## References

- [How Logging Affect Performance in Nodejs](https://facsiaginsa.com/nodejs/how-logging-affect-performance-fastify)
- LogRocket - [Best Practices Essential Guide](https://blog.logrocket.com/node-js-logging-best-practices-essential-guide/)
- LogRocket - [Logging with Pino and AsyncLocalStorage in Node.js](https://blog.logrocket.com/logging-with-pino-and-asynclocalstorage-in-node-js/)
- [A Complete Guide to Pino Logging in Node.js](https://betterstack.com/community/guides/logging/how-to-install-setup-and-use-pino-to-log-node-js-applications/)
- [A Complete Guide to Winston Logging in Node.js](https://betterstack.com/community/guides/logging/how-to-install-setup-and-use-winston-and-morgan-to-log-node-js-applications/)
- [Node.js in production: runtime log snooping](https://tritondatacenter.com/blog/node-js-in-production-runtime-log-snooping) - Bunyan
