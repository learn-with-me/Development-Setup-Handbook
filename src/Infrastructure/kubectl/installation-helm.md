# k8s Installation

## Installation

```sh
brew install helm
```

## Install plugin

```sh
# Install unittest plugin
helm plugin install https://github.com/quintush/helm-unittest

# List installed plugins
helm plugin list
```

## Working with Helm template

```sh
# Render helm template locally
helm template <project>

# Create a zip file of the helm chart
helm package

# Dry run
helm install --generate-name --dry-run --debug --values ./test-values.yaml <zip_file_name>.tgz
```

## Unit test

```sh
# Run unit tests
helm unittest <project>

# Override value during test run
# TODO: This doesn't work yet
helm unittest <project>> --set helmTests.enabled=true

# Run debug mode
helm unittest <project> --debug
```

## Install linter

```sh
# Install linter
brew install yamllint

# Verify version
yamllint --version

# Lint a file
yamllint <project>/templates/tests/<test_file>.yaml
```

## References

* https://labs.play-with-k8s.com/
* https://www.katacoda.com/courses/kubernetes/playground
* https://www.katacoda.com/
