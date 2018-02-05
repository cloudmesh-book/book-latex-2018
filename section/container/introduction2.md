# Intorduction to Docker

## Topics Covered and Learning Outcome
* What is Docker?
* What are containers?
* Components in Docker
* Run an example with Docker
* Gain practical experience with Docker
	* docker installation
	* docker hello world

## What is Docker?

Docker is the company driving the container movement and the only
container platform provider to address every application across the
hybrid cloud. Today’s businesses are under pressure to digitally
transform but are constrained by existing applications and
infrastructure while rationalizing an increasingly diverse portfolio
of clouds, datacenters and application architectures. Docker enables
true independence between applications and infrastructure and
developers and IT ops to unlock their potential and creates a model
for better collaboration and innovation.

![Docker Containers](https://www.docker.com/sites/default/files/Package%20software%40x2.png)

## Install Docker

### Install Docker for OSX

In order to install on OSX, you need to do the following steps:

1. Download `Docker.dmg` file from [https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac]()

2. Start `Docker.app`

### Install Docker Commuinity Edition for Ubuntu

In order to instal Docker community edition for Ubuntu, you first have
to setup the repository where it is located. This can be achieved as
follows:

```
$ sudo apt-get update

$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

$ sudo apt-key fingerprint 0EBFCD88

$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

Now you have configured the repository location, you can install it
after you haved updated the operating system. The update and install
is done as follows:

```
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo apt-get update
```

To check if the Docker works, please follow the following command.

```
$ sudo docker run hello-world
```
 
# Introduction to Kubernetes

## Topics Covered and Learning Outcome

* What is Kubernetes?
* What are containers?
* Cluster components in Kubernetes
* Basic Units in Kubernetes
* Run an example with Minikube
* Interactive online tutorial
* Have a solid understanding of Containers and Kubernetes
  * Understand the CLuster components of Kubernetes
  * Understand the terminology of Kubernetes
* Gain practical experience with kubernetes
  * With minikube
  * With an interactive online tutorial

## What is Kubernetes?

Kubernetes is an open-source platform designed to automate deploying,
scaling, and operating application containers.
[[1](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/)]

With Kubernetes, you can:

* Deploy your applications quickly and predictably.
* Scale your applications on the fly.
* Roll out new features seamlessly.
* Limit hardware usage to required resources only.
* Run applications in public and private clouds.

Kubernetes is

* Portable: public, private, hybrid, multi-cloud
* Extensible: modular, pluggable, hookable, composable
* Self-healing: auto-placement, auto-restart, auto-replication, auto-scaling

## What are containers?

![Kubernetes Containers](https://d33wubrfki0l68.cloudfront.net/e7b766e0175f30ae37f7e0e349b87cfe2034a1ae/3e391/images/docs/why_containers.svg) Image source: 

## Basic Units

### Pods

A pod (as in a pod of whales or pea pod) is a group of one or more
containers (such as Docker containers), with shared storage/network,
and a specification for how to run the containers. A pod’s contents
are always co-located and co-scheduled, and run in a shared context. A
pod models an application-specific “logical host” - it contains one or
more application containers which are relatively tightly coupled — in
a pre-container world, they would have executed on the same physical
or virtual machine.

### Services

Service is an abstraction which defines a logical set of Pods and a
policy by which to access them - sometimes called a micro-service. The
set of Pods targeted by a Service is (usually) determined by a Label
Selector.

### Deployments

A Deployment controller provides declarative updates for Pods and
ReplicaSets. You describe a desired state in a Deployment object, and
the Deployment controller changes the actual state to the desired
state at a controlled rate. You can define Deployments to create new
ReplicaSets, or to remove existing Deployments and adopt all their
resources with new Deployments.

## Run an example with Minikube in console

1. minikube installation
2. minikube hello-minikube

### Install `minikube`

#### OSX

```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```

#### Linux

```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```

### Start a cluster using Minikube

```
$ minikube start
```

### Create a deployment

```
$ kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.4 --port=8080
```

### Expose the service

```
$ kubectl expose deployment hello-minikube --type=NodePort
```

### Check running status

This step is to make sure you have a pod up and running.

```
$ kubectl get pod
```

### Call service api

```
$ curl $(minikube service hello-minikube --url)
```

### Take a look from Dashboard

```
$ minikube dashboard
```

### Delete the service and deployment

```
$ kubectl delete service hello-minikube
$ kubectl delete deployment hello-minikube
```

### Stop the cluster

```
$ minikube stop
```

## Interactive Tutorial Online
* Start cluster
https://kubernetes.io/docs/tutorials/kubernetes-basics/cluster-interactive/
* Deploy app
https://kubernetes.io/docs/tutorials/kubernetes-basics/cluster-interactive
* Explore
https://kubernetes.io/docs/tutorials/kubernetes-basics/explore-intro/
* Expose
https://kubernetes.io/docs/tutorials/kubernetes-basics/expose-intro/
* Scale
https://kubernetes.io/docs/tutorials/kubernetes-basics/scale-intro/
* Update
https://kubernetes.io/docs/tutorials/kubernetes-basics/update-interactive/
* MiniKube
https://kubernetes.io/docs/tutorials/stateless-application/hello-minikube/
