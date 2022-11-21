# Plugins and Extensions

## Tools

- Cluster
  - `kind` -- a tool for running local Kubernetes clusters using Docker container “nodes”. _kind_ was primarily designed for testing Kubernetes itself, but may be used for local development or CI.
  - `minikube` -- a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your personal computer so that you can try out Kubernetes, or for daily development work.
  - `kubeadm` -- a tool to create and manage Kubernetes clusters. It performs the actions necessary to get a minimum viable, secure cluster up and running in a user friendly way.

## Plugins

- AutoCompletion -- kubectl provides autocompletion support for Bash, Zsh, Fish, and PowerShell which can save you a lot of typing. (refer [this](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/) for instructions)
- `kubectl-convert` -- allows you to convert manifests between different API versions. This can be particularly helpful to migrate manifests to a non-deprecated api version with newer Kubernetes release.

## Components

- `kubelet` -- the component that runs on all of the machines in your cluster and does things like starting pods and containers.

## References

- [kind](https://kind.sigs.k8s.io/)
- [minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubeadm](https://kubernetes.io/docs/reference/setup-tools/kubeadm/)
