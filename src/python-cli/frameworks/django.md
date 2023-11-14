# Django

[Django](https://www.djangoproject.com/) is bigger and more complex than Flask or FastAPI, targeting `perfectionists with deadlines,` according to its website. Its built-in object-relational mapper (ORM) is useful for sites with major database backends. It’s more of a monolith than a toolkit. Whether the extra complexity and learning curve are justified depends on your application.

Although Django was a traditional WSGI application, version 3.0 added support for ASGI.

Unlike Flask and FastAPI, Django likes to define routes (associating URLs with web functions, which it calls view functions) in a single URLConf table, rather than using decorators. This makes it easier to see all your routes in one place, but makes it harder to see what URL is associated with a function when you’re looking at just the function.

## Installation

```sh
$ pip install Django==2.1.3
```

## Common Commands

```sh
$ python -m django --version
```



