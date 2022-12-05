# Adding featured to the template

These instructions will create a local server, with site hosted on port `8000`. Source markdown files can be found in `src/` folder.

To view/edit the site in live mode, open a browser session in [http://localhost:8000](http://localhost:8000)

## Set up environment

> Skip this stop if `venv` exists in current directory.

Verify if virtual environment is already installed

```sh
$ virtualenv --version
```

If the command returns error, then install `virtualenv`

```sh
$ pip install virtualenv
```

Create virtual environment `venv`

```sh
$ virtualenv venv
```

Activate virtual environment

```sh
$ source venv/bin/activate
```

## Install Dependencies

```
(venv) $ pip install -r requirements.txt
```

## Running locally

```
(venv) $ mkdocs serve

Open the browser with http://localhost:8000

If ever needed, you can also generate the `site` folder locally via:
(venv) $ mkdocs build --clean
```

## What if there is a port conflict?

The default `dev_addr` configuration is set to `127.0.0.1:8000`.
Add the line below to `mkdocs.yml` for changing the port (example 9000)

```sh
default: '127.0.0.1:9000'
```

Refer [this](https://www.mkdocs.org/user-guide/configuration/) for other configurations.
