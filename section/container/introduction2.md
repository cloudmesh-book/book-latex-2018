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

![Docker Containers](../../images/container-1.png)

Image Source [https://www.docker.com/sites/default/files/Package%20software%40x2.png](https://www.docker.com/sites/default/files/Package%20software%40x2.png])

## Install Docker

### Install Docker for OSX

In order to install on OSX, you need to do the following steps:

1. Download `Docker.dmg` file from [https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)

2. Start `Docker.app`


### Install Docker for Windows 10

[Download docker](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe)

[Download docker toolbox](https://download.docker.com/win/stable/DockerToolbox.exe)

Move these downloaded files to a directory as shown below.

```
mkdir C:\Users\<username>\Documents\cloudmesh
```

Replace <username> with the username in your Windows 10 account

Example : Neo


```
mkdir C:\Users\Neo\Documents\cloudmesh
```

Place all the downloaded exe files in the cloudmesh directory we created earlier. First do the Docker installation and then do the Docker Toolbox installation. Then you can double click the exe file and run it for installation.

When you are doing the installation, tic mark the descriptions in the installation saying to create shortcuts in your desktop. This way you can load all the tools in the desktop as shortcuts.

For running you will need the "Docker Quickstart Terminal" application and it will load all the requirements and provide a terminal window in which you can execute docker commands.

Once the terminal is loaded, it will show something like following :

```
$ <username>@<yourpc> MINGW64 ~
```

For instance

```
$neo@neo MINGW64 ~
```

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

![Kubernetes Containers](../../images/why_containers.png) 

Image source:
* https://d33wubrfki0l68.cloudfront.net/e7b766e0175f30ae37f7e0e349b87cfe2034a1ae/3e391/images/docs/why_containers.svg

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
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
```

```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```

#### Windows 10

We assume that you have installed Oracle VirtualBox in your machine which must be a version 5.x.x.

Initially, we need to download two executables.

[Download Kubectl](http://storage.googleapis.com/kubernetes-release/release/v1.4.0/bin/windows/amd64/kubectl.exe)

[Download Minikube](https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-windows-amd64.exe)

After downloading these two executables place them in the cloudmesh directory we earlier created. Rename the "minikube-windows-amd64.exe" to "minikube.exe". Makesure minikube.exe and kubectl.exe lie in the same directory.

#### Linux

```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```

Installing KVM2 is important for Ubuntu distributions

```
$ sudo apt install libvirt-bin qemu-kvm
$ sudo usermod -a -G libvirtd $(whoami)
$ newgrp libvirtd
```

We are going to run minikube using KVM2 libraries instead of virtualbox libraries for windows installation.

Then install the drivers for KVM2,

```
$ curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 && chmod +x docker-machine-driver-kvm2 && sudo mv docker-machine-driver-kvm2 /usr/bin/
```

### Start a cluster using Minikube

#### OSX Minikube Start

```
$ minikube start
```

#### Ubuntu Minikube Start
```
minikube start --vm-driver=kvm2
```

#### Windows 10 Minikube Start

In this case you must run "Windows PowerShell" as administrator.
For this search for the application in search and right click and
click Run as administrator. If you are an administrator it will run
automatically but if you are not please make sure you provide the
admin login information in the pop up.

```
$ cd  C:\Users\<username>\Documents\cloudmesh
$ .\minikube.exe start --vm-driver="virtualbox"
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

If you want to get an interactive dashboard,

```
$ .\minikube.exe dashboard --url=true
http://192.168.99.101:30000
```
Browse to http://192.168.99.101:30000 in your web browser and it will provide a GUI dashboard regarding minikube. 

### Delete the service and deployment

```
$ kubectl delete service hello-minikube
$ kubectl delete deployment hello-minikube
```

### Stop the cluster

For all platforms we can use the following command.

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
