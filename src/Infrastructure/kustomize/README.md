# kustomize

Kustomize introduces a template-free way to customize application configuration that simplifies the use of off-the-shelf applications. Now, built into `kubectl` as `apply -k`.

## Installation

```sh
$ brew install kustomize
```

## Common Commands (using standalone)

```sh
# To view Resources found in a directory containing a kustomization file:
$ kustomize build <kustomization_directory>
$ kustomize build <kustomization_directory> --enable-help
```

## Common Commands (using with kubectl)

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
- [Command reference](https://kubectl.docs.kubernetes.io/references/kustomize/cmd/)
- [Using with kubectl](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/)
