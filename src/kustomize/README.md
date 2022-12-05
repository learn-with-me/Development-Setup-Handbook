# kustomize

Kustomize introduces a template-free way to customize application configuration that simplifies the use of off-the-shelf applications. Now, built into `kubectl` as `apply -k`.

## Installation

```sh
$ brew install kustomize
```

## Common Commands

```sh
# To view Resources found in a directory containing a kustomization file:
$ kubectl kustomize <kustomization_directory>
```

```sh
# To apply those Resources
$ kubectl apply -k <kustomization_directory>
```

## References

- [Official site](https://kustomize.io/)
- [Using with kubectl](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/)
