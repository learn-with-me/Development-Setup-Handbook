# Python Frameworks

* Flask
* Fast API
* Django

Flask and Django are the most popular Python web frameworks, although FastAPI’s popularity is growing faster. All three handle the basic web server tasks, with varying learning curves. FastAPI seems to have a cleaner syntax for specifying routes, and its support of ASGI allows it to run faster than its competitors in many cases.

## Features

### Server-sent events
Push data to a client as needed. Supported by FastAPI ([sse-starlette](https://github.com/sysid/sse-starlette)), Flask ([Flask-SSE](https://flask-sse.readthedocs.io/en/latest/)), and Django ([Django EventStream](https://github.com/fanout/django-eventstream)).

### Queues
Job queues, publish-subscribe, and other networking patterns are supported by external packages like `ZeroMQ`, `Celery`, `Redis`, and `RabbitMQ`.

### WebSockets
Supported by FastAPI (directly), Django ([Django Channels](https://channels.readthedocs.io/en/latest/)), and Flask (third-party packages).

### Database

Flask and FastAPI do not include any database handling in their base packages, but database handling is a key feature of Django.

A common choice for Flask and FastAPI developers is [SQLAlchemy](https://www.sqlalchemy.org/). FastAPI utilizes SQLAlchemy and Pydantic for the [SQLModel package](https://sqlmodel.tiangolo.com/).

## Other Web Frameworks

* [Bottle](https://bottlepy.org/docs/dev) is a very minimal (single Python file) package, good for a quick proof of concept.
* [Litestar](https://litestar.dev/) - Similar to FastAPI — it’s based on ASGI/Starlette and Pydantic—but has its own opinions
* [AIOHTTP](https://docs.aiohttp.org/) - An ASGI client and server, with useful demo code
* [Socketify.py](https://docs.socketify.dev/) is a new entrant that claims very high performance.
