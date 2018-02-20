Using the Kubernetes cluster on FutureSystems
=============================================

.. sidebar:: Page Contents

   .. contents::
      :local:

Overview
--------
This documentation introduces how to use the Kubernetes cluster on FutureSystems.
Currently we have deployed a kubernetes cluster on Echo.

Getting Access
--------------
You will need an account on FutureSystems. To verify, try to see if you can log 
into india.futuresystems.org. You need to be a member of a valid FutureSystems 
project, and had submitted an ssh public key via the FutureSystems portal.

If your access to the india host has been verified, try to login to the kubernetes
cluster head node with the same username and key:

.. prompt:: bash, $

  ssh FS_USER@149.165.150.85
  
**NOTE: If you have access to india but not the docker swarm system, your 
project may not have been authorized to access the kubernetes cluster.
Send a ticket to FutureSystems ticket system to request this.**

Once logged in to the kubernetes cluster head node, try to run:

.. prompt:: bash, $

  kubectl get pods

to verify if kubectl command works.

First Example Run
-----------------
The following command runs an image, and with two copies:

.. prompt:: bash, $

  kubectl run nginx --replicas=2 --image=nginx --port=80

As a result of this one deployment was created, and two PODs are created and running.

.. prompt:: bash, $

  kubectl get deployment

```
NAME      DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
nginx     2         2         2            2           7m
```

.. prompt:: bash, $

  kubectl get pods

```
NAME                      READY     STATUS    RESTARTS   AGE
nginx-7587c6fdb6-4jnh6    1/1       Running   0          7m
nginx-7587c6fdb6-pxpsz    1/1       Running   0          7m
```

If we want to see more detailed info:

.. prompt:: bash, $

  kubectl get pods -o wide

```
NAME                      READY     STATUS    RESTARTS   AGE       IP               NODE
nginx-7587c6fdb6-4jnh6    1/1       Running   0          8m        192.168.56.1     e003
nginx-7587c6fdb6-pxpsz    1/1       Running   0          8m        192.168.255.66   e005
```

Please note the IP address field. Now if we try to access the nginx homepage with wget (or curl):

.. prompt:: bash, $

  wget 192.168.56.2

```
--2018-02-20 14:05:59--  http://192.168.56.2/
Connecting to 192.168.56.2:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 612 [text/html]
Saving to: 'index.html'

index.html                                     100%[===================================================================================================>]     612  --.-KB/s    in 0s

2018-02-20 14:05:59 (38.9 MB/s) - 'index.html' saved [612/612]

```

And this verifies that the specified image was running, and it's accessible from within the cluster.

What if we want to access this web server from outside the cluster? Exposing the service.

.. prompt:: bash, $

  kubectl expose deployment nginx --type=NodePort --name=nginx-external

```
service "nginx-external" exposed
```

.. prompt:: bash, $

  kubectl get svc

```
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
kubernetes        ClusterIP   10.96.0.1       <none>        443/TCP        8h
nginx-external    NodePort    10.96.183.189   <none>        80:30275/TCP   6s
```

Note the port **30275** in **80:30275/TCP**.

Now if we visit this URL, which is the public IP of the head node followed by the exposed port number:

```
http://149.165.150.85:30275
```

You should see the 'Welcome to nginx' page.

What's next?
--------------------------------------------------
* Exploring more complex service examples
* Exploring constructing a complex web app with multiple services
* Defining a deployment with a yaml file declaratively.

