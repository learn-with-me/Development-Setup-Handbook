# httpie

A command-line text web client, similar to `curl`. Although Curl is the best known text web client, `Httpie` is easier to use. Also, it `defaults to JSON encoding and decoding`, which is a better match for FastAPI.

```sh
$ pip install httpie
```

## Usage

### GET

```sh
# Show response with headers
$ http localhost:8000/hello

# Show response without headers
$ http -b localhost:8000/hello

# Show response with request headers and response headers
$ http -v localhost:8000/hello
```

## POST

```sh
# Send request with body
$ http localhost:8000/hello name=Champ
```
