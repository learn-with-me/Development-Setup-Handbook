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

General use commands

```sh
# Check which nodes are ready
JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status};{end}{end}' \
 && kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"

# Output decoded secrets without external tools
kubectl get secret my-secret -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}{{$v|base64decode}}{{"\n\n"}}{{end}}'

# List Events sorted by timestamp
kubectl get events --sort-by=.metadata.creationTimestamp

# Compares the current state of the cluster against the state that the cluster would be in if the manifest was applied.
kubectl diff -f ./my-manifest.yaml
```

## Updating Resources

```sh

```

## Patching Resources

```sh

```

## Editing Resources

```sh

```

## Scaling Resources

```sh

```

## Deleting Resources

```sh

```

## Interacting with running Pods

```sh
kubectl logs my-pod                                 # dump pod logs (stdout)
kubectl logs -f my-pod                              # stream pod logs (stdout)
kubectl logs -f my-pod -c my-container              # stream pod container logs (stdout, multi-container case)

kubectl run -i --tty busybox --image=busybox:1.28 -- sh  # Run pod as interactive shell
kubectl run nginx --image=nginx -n mynamespace      # Start a single instance of nginx pod in the namespace of mynamespace
kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml
                                                    # Generate spec for running pod nginx and write it into a file called pod.yaml

kubectl port-forward my-pod 5000:6000               # Listen on port 5000 on the local machine and forward to port 6000 on my-pod
kubectl exec my-pod -- ls /                         # Run command in existing pod (1 container case)
kubectl exec --stdin --tty my-pod -- /bin/sh        # Interactive shell access to a running pod (1 container case)
kubectl exec my-pod -c my-container -- ls /         # Run command in existing pod (multi-container case)
kubectl top pod POD_NAME --containers               # Show metrics for a given pod and its containers
kubectl top pod POD_NAME --sort-by=cpu              # Show metrics for a given pod and sort it by 'cpu' or 'memory'
```

## Resources

- Official [docs](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)
- Official [cheatsheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
- [kubectl docs](https://kubectl.docs.kubernetes.io/)
