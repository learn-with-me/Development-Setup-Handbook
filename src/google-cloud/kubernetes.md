# Kubernetes

#### Installation

```
Option 1
$ brew install kubernetes-cli

Option 2
$ gcloud components install kubectl

Verification
$ kubectl version
```

#### Cheatsheet

```
To find out which cluster information in the current context
$ kubectl cluster-info    # URL response means kubectl is correctly configured to access your cluster.
OR
$ kubectl config current-context
```

#### Minikube

```
$ brew cask install minikube
$ minikube version
$ minikube start
```

#### Helm

```
$ brew install kubernetes-helm
```

#### References

```
https://labs.play-with-k8s.com/
https://www.katacoda.com/courses/kubernetes/playground
https://www.katacoda.com/
```



