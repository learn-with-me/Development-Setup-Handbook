# pre-commit

[pre-commit](https://pre-commit.com/) run hooks on every commit automatically.

```sh
# Install manually or add the package in the requirements.txt
$ pip install pre-commit

# Alternatively, install using homebrew
$ brew install pre-commit
```

## Config yaml

Sample pre-commit config yaml saved as `.pre-commit-config.yaml`.

```yaml
repos:
-   repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v2.3.0
    hooks:
    -   id: check-yaml
    -   id: end-of-file-fixer
    -   id: trailing-whitespace
-   repo: https://github.com/psf/black
    rev: 22.10.0
    hooks:
    -   id: black
```

## Usage

```sh
# Check current version
$ pre-commit --version

# Install the git hook script (once you have the configuration file)
$ pre-commit install

# Note, this is only a one-time step. Once the git hooks are created, there is no need to run install again.

# Manually run against all files
$ pre-commit run --all-files
```
