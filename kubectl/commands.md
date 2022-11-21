# kubectl Commands

## Defaults

```sh
$ kubectl config get-contexts
$ kubectl config use-context my-cluster-name

# permanently save the namespace for all subsequent kubectl commands in that context
$ kubectl config set-context --current --namespace=ggckad-s2
```

## Creating Objects

`kubectl apply` creates and updates resources in a cluster.

```sh
# create resource(s)
$ kubectl apply -f ./my-manifest.yaml

# create resource(s) in all manifest files in dir
$ kubectl apply -f ./dir

# create resource(s) from url
$ kubectl apply -f https://git.io/vPieo

# start a single instance of nginx
$ kubectl create deployment nginx --image=nginx

# create a Job which prints "Hello World"
$ kubectl create job hello --image=busybox:1.28 -- echo "Hello World"

# create a CronJob that prints "Hello World" every minute
$ kubectl create cronjob hello --image=busybox:1.28   --schedule="*/1 * * * *" -- echo "Hello World"
```

## Viewing / Finding Resources

```sh
# get the documentation for pod manifests
$ kubectl explain pods
```

Get commands with basic output

```sh
$ kubectl get services                          # List all services in the namespace
$ kubectl get deployment my-dep                 # List a particular deployment

$ kubectl get pods                              # List all pods in the namespace
$ kubectl get pod my-pod -o yaml                # Get a pod's YAML
$ kubectl get pods --all-namespaces             # List all pods in all namespaces
$ kubectl get pods -o wide                      # List all pods in the current namespace, with more details
```

Describe commands with verbose output
```sh
$ kubectl describe nodes my-node
$ kubectl describe pods my-pod
```

```sh

```

```sh

```
## Resources

- Official [docs](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)
- Official [cheatsheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
- [kubectl docs](https://kubectl.docs.kubernetes.io/)
