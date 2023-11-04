# httpx

A synchronous/asynchronous web client package. Use in Python in `interactive mode`, and type after the `>>>` prompt.

```sh
$ pip install httpx
```

## Usage

### GET

```sh
>>> import httpx
>>> r = httpx.get("http://localhost:8000/hello")
>>> r.json()
'Hello? World?'
```

## POST

```sh
>>> import httpx
>>> r = httpx.post("http://localhost:8000/hello", json={"name": "Champ"})
>>> r.json()
'Hello Champ!'
```
