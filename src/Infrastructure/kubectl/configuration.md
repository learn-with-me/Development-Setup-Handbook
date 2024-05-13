# Configuring kubeconfig

In order for kubectl to find and access a Kubernetes cluster, it needs a kubeconfig file.

Check that kubectl is properly configured by getting the cluster state:

```sh
# cluster information in the current context
$ kubectl cluster-info
$ kubectl config current-context

# URL response means kubectl is correctly configured to access your cluster.
```

If you see the connection refused to the cluster, then either kubectl is not configured correctly or docker is not up.

To check whether it is configured properly, use:
```shell
$ kubectl cluster-info dump
```

## Basic Structure

A configuration file describes clusters, users, and contexts. By default, kubectl configuration is located at `~/.kube/config`.

```yaml
apiVersion: v1
kind: Config
preferences: {}

clusters:
- cluster:
  name: development
- cluster:
  name: scratch

users:
- name: developer
- name: experimenter

contexts:
- context:
  name: dev-frontend
- context:
  name: dev-storage
- context:
  name: exp-scratch
```

## Define Clusters, Users, and Contexts

Add cluster details

```sh
$ kubectl config --kubeconfig=config-demo set-cluster development --server=https://1.2.3.4 --certificate-authority=fake-ca-file

$ kubectl config --kubeconfig=config-demo set-cluster scratch --server=https://5.6.7.8 --insecure-skip-tls-verify

```

Add user details

```sh
$ kubectl config --kubeconfig=config-demo set-credentials developer --client-certificate=fake-cert-file --client-key=fake-key-seefile

$ kubectl config --kubeconfig=config-demo set-credentials experimenter --username=exp --password=some-password
```

Add context details

```sh
$ kubectl config --kubeconfig=config-demo set-context dev-frontend --cluster=development --namespace=frontend --user=developer

$ kubectl config --kubeconfig=config-demo set-context dev-storage --cluster=development --namespace=storage --user=developer

$ kubectl config --kubeconfig=config-demo set-context exp-scratch --cluster=scratch --namespace=default --user=experimenter
```

Add Credentials

```sh
# add a new user to your kubeconf that supports basic auth
$ kubectl config set-credentials kubeuser/foo.kubernetes.com --username=kubeuser --password=kubepassword
```

## View Configuration

```sh
$ kubectl config view
$ kubectl config get-clusters
$ kubectl config get-contexts
$ kubectl config get-users

Change current context
$ kubectl config use-context dev-frontend

View configs only for the current context
$ kubectl config view --minify
```

## Remove Configuration

```sh
$ kubectl --kubeconfig=config-demo config unset clusters.<name>
$ kubectl --kubeconfig=config-demo config unset contexts.<name>
$ kubectl --kubeconfig=config-demo config unset users.<name>
```

## References

- [Configure access multiple clusters](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/)
