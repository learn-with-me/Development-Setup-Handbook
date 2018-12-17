# Kubernetes

#### Setup

```
$ sudo apt-get update                            # Update existing packages
$ sudo apt-get install python                    # Install Python
$ sudo apt-get install curl                      # Install Curl
$ curl https://sdk.cloud.google.com | bash       # Install gcloud SDK
```

#### Configure GCP

```
$ gcloud auth login                             # Login to GCP via command line
$ gcloud config list project                    # Verify the project set active
$ gcloud config set project <PROJECT ID>        # Set project active

Turn on API access to your project in the GCP dashboard
    Enable APIs and get credentials like keys
```

#### Setup - Kubernetes

```
$ mkdir ~/code/gsw-k8s-3                        # Create directory to install the Kubernetes binaries
$ cd ~/code/gsw-k8s-3

$ curl -sS https://get.k8s.io | bash            # Installing the latest Kubernetes version
$ kubernetes/cluster/kube-up.sh                 # call the script to launch the cluster
```

#### Setup GCloud

```
$ gcloud components list
$ gcloud components install COMPONENT_ID
$ gcloud components remove COMPONENT_ID
$ gcloud components update
```

#### Setup - kubectl

```
$ curl -LO https://storage.googleapis.com/kubernetes-release/release/ \
       $(curl -s https://storage.googleapis.com/kubernetes-release/ \
       release/stable.txt) \
       /bin/linux/amd64/kubectl

$ chmod +x ./kubectl

$ sudo mv ./kubectl /usr/local/bin/kubectl
```

#### Setup Minikube \(local development only\)

```
$ curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.18.0/ \
                    minikube-linux-amd64

$ chmod +x minikube

$ sudo mv minikube /usr/local/bin/
$ minikube start --cpus=4 --memory=4000 --kubernetes-version=v1.7.2
```



