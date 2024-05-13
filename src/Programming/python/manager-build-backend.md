# Build Backend

Tools like `pip` and `build` do not actually convert your sources into a `distribution package` (like a `wheel`); that job is performed by a `build backend`. The build backend determines how your project will specify its configuration, including metadata and input files. Build backends have different levels of functionality.

Some of the popular build backends are: [hatchling](https://hatch.pypa.io/1.10/), [Setuptools](https://setuptools.pypa.io/en/latest/), [Flit](https://flit.pypa.io/en/stable/), [PDM](https://pdm-project.org/en/latest/), and others.

## Configuring Metadata

Create a `pyproject.toml`, which is very similar to `package.json` if you're familiar.

## Development

## Generating distribution archives

```sh
# Make sure you have the latest version of the build tool
python3 -m pip install --upgrade build

# Run this command from the same directory where pyproject.toml is located
python3 -m build

# This should output a lot of text and once completed should generate two files in the dist directory, with extensions `tar.gz` and `.whl`
```

## Uploading the distribution archives

The first thing you’ll need to do is [register](https://test.pypi.org/account/register/) an account on TestPyPI, which is a separate instance of the package index intended for testing and experimentation. To securely upload your project, you’ll need a PyPI [API token](https://test.pypi.org/help/#apitoken).

```sh
python3 -m pip install --upgrade twine

python3 -m twine upload --repository testpypi dist/*
```

## Resources

- [Packaging Python Projects](https://packaging.python.org/en/latest/tutorials/packaging-projects/#choosing-build-backend)
- [Configuring metadata](https://packaging.python.org/en/latest/tutorials/packaging-projects/#configuring-metadata)
- [What is pyproject.toml file for?](https://stackoverflow.com/questions/62983756/what-is-pyproject-toml-file-for) | StackOverflow
- [What Are Python Wheels and Why Should You Care?](https://realpython.com/python-wheels/)
- [Twine](https://twine.readthedocs.io/en/stable/) is a utility for publishing Python packages to PyPI and other repositories. It provides build system independent uploads of source and binary distribution artifacts for both new and existing projects.
