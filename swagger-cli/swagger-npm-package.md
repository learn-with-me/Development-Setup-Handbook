# Swagger NPM Package

> Note: This package was last published in the year 2016, and no longer maintained.
> There are [plans to revive](https://github.com/swagger-api/swagger-node/issues/592) the project at some unknown point in future

## Installation

> Prerequisite: Have npm installed locally

```
$ npm install -g swagger
```

## Create a Project

```
$ swagger project create <project_name>

It supports multiple frameworks including Express.
It'll ask to make that selection when creating the project.
```

## Starting the Project

```
$ swagger project start <project_name>
$ swagger project start <project_name> -m       # API to return mock response

It gives us an example that we can use
http://127.0.0.1:10010/hello?name=Scott

Test the endpoint
$ curl http://127.0.0.1:10010/hello?name=Scott
```

## Edit the project

Swagger has this editor that allows us to define our API. Open editor using:

```
$ swagger project edit

It should open up a local browser with swagger editor running live
```

## References

- GitHub [swagger-node](https://github.com/swagger-api/swagger-node) or [npmjs.com](https://www.npmjs.com/package/swagger)
- egghead.io [Build Node.js APIs with OpenAPI Spec (Swagger)](https://egghead.io/courses/build-node-js-apis-with-openapi-spec-swagger)
