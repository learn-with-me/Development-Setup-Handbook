# requests

A synchronous web client package. Unlike `httpx`, it does not support asynchronous calls. Use in Python in `interactive mode`, and type after the `>>>` prompt.

```sh
$ pip install requests
```

## Usage

### GET

```sh
>>> import requests
>>> r = requests.get("http://localhost:8000/hello")
>>> r.json()
'Hello World!'
```

## POST

```sh
>>> import requests
>>> r = requests.post("http://localhost:8000/hello", json={"name": "Champ"})
>>> r.json()
'Hello Champ!'
```
