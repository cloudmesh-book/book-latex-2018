# Tutorial: OpenStack Cluster Setup 

Authored by spathan1985 (hid-sp18-516)
- https://github.com/cloudmesh-community/hid-sp18-516/blob/master/tutorial/openstackcluster.md

## Overview
OpenStack is an Infrastructure as a Service platform that allows to create and
manage virtual environments. It is a free and opensource software for cloud
computing, that controls large pools of compute, storage and networking
resources throughout a datacenter managing it either via dashboard or through
the OpenStack API~\cite{hid-sp18-516-www-openstack}. The OpenStack software can
be easily accessed via the OpenStack Web Interface called `Horizon` provided by
Chameleon. Chameleon provides an installation of OpenStack version 2015.1 (Kilo)
using the KVM virtualization technology~\cite{hid-sp18-516-www-chameleon}. 

In this tutorial, we are going to create some instances using Openstack Command
Line Interface (CLI) and create a cluster from those instances. For the purpose
of this tutorial, we will just create 3 instances to show how a cluster can be
set-up. 

## Creating the RC File
The first step is to create the OpenStack RC. This can be done either via the
editor or via GUI. We will see how to create via the
editor~\cite{hid-sp18-516-las17handbook}. 

  * Open a terminal on your VM and create a directory 
  
    `mkdir -p ~/.cloudmesh/chameleon`
  
  * Download the open RC template from the following link using wget:
  
    `wget
     https://raw.githubusercontent.com/cloudmesh/book/master/examples/chameleon/cc-openrc.sh
     -O ~/.cloudmesh/chameleon/cc-openrc.sh`
  
  * Open the cc-openrc.sh file and edit the following items and save it:
 
    `export CC_PREFIX="<yourusername-hidnumber>"`
 
    `export OS_USERNAME="<put your chameleon cloud username here>"`
  
  * After saving the file, you need to `source` the file by running:
 
    `source ~/.cloudmesh/chameleon/cc-openrc.sh`
  
## Installing the OpenStack CLI
The next step is to install the OpenStack CLI and novaclient to create your
instances. 
  * To install the OpenStack client, run the command:
  
    `pip install python-openstackclient`
  
  * Since the openstack client, has limited functionalities, it is also better to 
    install `nova` API. This can be done by running:
    
    `pip install python-novaclient`
  
Now you are ready to create your instances on OpenStack. This tutorial is
executed on the following versions:
  
  `(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack --version
  openstack 3.14.0`
  
  `(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ nova --version
  10.1.0`

## Creating the Instance  
In order to create the instances, you need to check the flavor list to be used.
To do that, run the following command:

`openstack flavor list`

Example output:
```
(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack flavor list
+----+----------------+-------+------+-----------+-------+-----------+
| ID | Name           |   RAM | Disk | Ephemeral | VCPUs | Is Public |
+----+----------------+-------+------+-----------+-------+-----------+
| 1  | m1.tiny        |   512 |    1 |         0 |     1 | True      |
| 2  | m1.small       |  2048 |   20 |         0 |     1 | True      |
| 3  | m1.medium      |  4096 |   40 |         0 |     2 | True      |
| 4  | m1.large       |  8192 |   80 |         0 |     4 | True      |
| 5  | m1.xlarge      | 16384 |  160 |         0 |     8 | True      |
| 6  | storage.medium |  4096 | 2048 |         0 |     1 | True      |
| 7  | m1.xxlarge     | 32768 |  160 |         0 |     8 | True      |
| 8  | m1.xxxlarge    | 32768 |  160 |         0 |    16 | True      |
+----+----------------+-------+------+-----------+-------+-----------+
```
To check the images available, run the following command:

`openstack image list | grep 'Ubuntu16.04'`

Example output:
```(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack image list | grep 'Ubuntu16.04'
| 1895dc93-7cd8-4b46-a252-4eb55b80859f | CC-Ubuntu16.04                                   | active |
| 01a6d6d1-e692-4e86-b776-dbb387c64958 | CC-Ubuntu16.04-20160610                          | active |
| 58e3df11-a1ff-4b6b-bbdf-3835dd0b20a2 | CC-Ubuntu16.04-20161010                          | active |
| cce5fe00-ef3d-4d42-9ec9-39ab57b5488e | CC-Ubuntu16.04-20161214                          | active |
| 2808416b-f1b6-4429-9a4f-a03a1b0da4c3 | CC-Ubuntu16.04-20170410                          | active |
| c80567e8-12f9-44fc-8335-f62831ee73a6 | CC-Ubuntu16.04-20171028                          | active |
| 9d5745c1-caee-4a42-ae4e-4c810589c749 | CC-Ubuntu16.04-20171110                          | active |
| 30adb881-f921-404d-a2de-cf530795b2aa | CC-Ubuntu16.04-20171221                          | active |
| 1decb35b-dd9b-4d88-b9e2-62bdbe68124a | das_arun_deeplearning_CC-Ubuntu16.04             | active |
```

To check the security groups list, run the following command. We are going to
use the `default` security group that's already created for us.
```
(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack security group list
+--------------------------------------+-----------------+--------------------------------+-----------+
| ID                                   | Name            | Description                    | Project   |
+--------------------------------------+-----------------+--------------------------------+-----------+
| 00555968-5dad-4544-88c9-91cff2a390e6 | default         | Default security group         | CH-819337 |
| c3b48218-80f5-4243-919b-581a3a7103e6 | rrufael-default | Security group rrufael-default | CH-819337 |
+--------------------------------------+-----------------+--------------------------------+-----------+
```

In order to access the instance from your own VM, you need to create a keypair.
If you have keypair already available on your VM and if you would like to use
it, go ahead. Else you can create it using `ssh-keygen -t rsa` command. To add
your public key on OpenStack, run the following command:

`nova keypair-add --pub-key ~/.ssh/<yourpublickeyname>.pub $CC_PREFIX-key`

To list the keypair added, run the following command:

`nova keypair-list`

You should see your $CC_PREFIX-key added. 

Now to create the instances, all 3 instances can be launched at a time using the
`nova boot` command:

`nova boot --image CC-Ubuntu16.04 --min-count 1 --max-count 3 --key-name
$CC_PREFIX-key --flavor m1.small $CC_PREFIX`

To see the list of instances created, type the following command:

`nova list` or `openstack server list`

Example output:
```
(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ nova list
+--------------------------------------+-------------------------------+---------+------------+-------------+----------------------------+
| ID                                   | Name                          | Status  | Task State | Power State | Networks                   |
+--------------------------------------+-------------------------------+---------+------------+-------------+----------------------------+
| 1420b190-5995-4cae-a4c5-985691a20a63 | rcarmick-hid404-Ubuntu16.04.3 | SHUTOFF | -          | Shutdown    | CH-819337-net=192.168.0.19 |
| 8fb6376e-48e0-44cc-aa36-c89ead7d5092 | rrufael-703-01                | SHUTOFF | -          | Shutdown    | CH-819337-net=192.168.0.11 |
| fb858c85-8702-4ae2-8e4f-33ce672c817b | spathan-516-1                 | ACTIVE  | -          | Running     | CH-819337-net=192.168.0.33 |
| 10f5f689-0975-4e8b-9e1e-0fdbe968b086 | spathan-516-2                 | ACTIVE  | -          | Running     | CH-819337-net=192.168.0.34 |
| 7e443fc1-f1ce-4821-8710-e461a1f4a27f | spathan-516-3                 | ACTIVE  | -          | Running     | CH-819337-net=192.168.0.35 |
+--------------------------------------+-------------------------------+---------+------------+-------------+----------------------------+
```

## Associating Floating IP
In order to ssh to the instance from your own VM, you need to assign a floating
IP to the instance. For this we first need to generate floating IPs.

To check if there are any floating IPs already available, run the command:

`openstack floating ip list`

If there are floating IPs available, you can choose to associate them with your
instance. If the floating ip list does not return any output, then you need to
generate the floating IPs in order to associate them to your instances.

To generate the floating IPs, run the following command:

`openstack floating ip create ext-net`

As we have 3 instances to associate with, we need to generate 3 floating IPs.
Hence run the above command 3 times.

Now when you run the `openstack floating ip list` command, you should see 3
floating IPs created.
Example output:
```
(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack floating ip list
+--------------------------------------+---------------------+------------------+------+--------------------------------------+-----------+
| ID                                   | Floating IP Address | Fixed IP Address | Port | Floating Network                     | Project   |
+--------------------------------------+---------------------+------------------+------+--------------------------------------+-----------+
| 09a3393e-6a7c-41b7-b2ad-cc00d518c8b0 | 129.114.111.86      | None             | None | dbf29083-ff90-406e-b69a-b1d93b8f0a2d | CH-819337 |
| e9d85da5-ede0-4460-bd1e-908901c1d9ce | 129.114.111.90      | None             | None | dbf29083-ff90-406e-b69a-b1d93b8f0a2d | CH-819337 |
| f7cf14ef-7601-4172-93c2-d259b10cd47e | 129.114.111.85      | None             | None | dbf29083-ff90-406e-b69a-b1d93b8f0a2d | CH-819337 |
+--------------------------------------+---------------------+------------------+------+--------------------------------------+-----------+
```

Before we associate the floating IP to the instance, we need to assign port to
our instance ID. To do this, run the following command:

`openstack port list --device-id <InstanceID>`

Example output:
```
(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack server list
+--------------------------------------+-------------------------------+---------+----------------------------+----------------+-----------+
| ID                                   | Name                          | Status  | Networks                   | Image          | Flavor    |
+--------------------------------------+-------------------------------+---------+----------------------------+----------------+-----------+
| 7e443fc1-f1ce-4821-8710-e461a1f4a27f | spathan-516-3                 | ACTIVE  | CH-819337-net=192.168.0.35 | CC-Ubuntu16.04 | m1.small  |
| 10f5f689-0975-4e8b-9e1e-0fdbe968b086 | spathan-516-2                 | ACTIVE  | CH-819337-net=192.168.0.34 | CC-Ubuntu16.04 | m1.small  |
| fb858c85-8702-4ae2-8e4f-33ce672c817b | spathan-516-1                 | ACTIVE  | CH-819337-net=192.168.0.33 | CC-Ubuntu16.04 | m1.small  |
| 1420b190-5995-4cae-a4c5-985691a20a63 | rcarmick-hid404-Ubuntu16.04.3 | SHUTOFF | CH-819337-net=192.168.0.19 | CC-Ubuntu16.04 | m1.medium |
| 8fb6376e-48e0-44cc-aa36-c89ead7d5092 | rrufael-703-01                | SHUTOFF | CH-819337-net=192.168.0.11 | CC-Ubuntu16.04 | m1.medium |
+--------------------------------------+-------------------------------+---------+----------------------------+----------------+-----------+

(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack port list --device-id fb858c85-8702-4ae2-8e4f-33ce672c817b
+--------------------------------------+------+-------------------+-----------------------------------------------------------------------------+--------+
| ID                                   | Name | MAC Address       | Fixed IP Addresses                                                          | Status |
+--------------------------------------+------+-------------------+-----------------------------------------------------------------------------+--------+
| 4a9de659-c83f-4818-ab37-a066f7529e3d |      | fa:16:3e:36:4b:e5 | ip_address='192.168.0.33', subnet_id='508eb1f9-1237-4c02-a3ff-313960136c8a' | ACTIVE |
+--------------------------------------+------+-------------------+-----------------------------------------------------------------------------+--------+
```

Now we can associate the floating IP to the instance by running the following command:

`openstack floating ip set --port <PortID> <floatingIP>`

Example Output:
```
(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack floating ip set --port 4a9de659-c83f-4818-ab37-a066f7529e3d 129.114.111.85

(ENV2) spathan@spathan-VirtualBox:~/.cloudmesh/chameleon$ openstack server list
+--------------------------------------+-------------------------------+---------+--------------------------------------------+----------------+-----------+
| ID                                   | Name                          | Status  | Networks                                   | Image          | Flavor    |
+--------------------------------------+-------------------------------+---------+--------------------------------------------+----------------+-----------+
| 7e443fc1-f1ce-4821-8710-e461a1f4a27f | spathan-516-3                 | ACTIVE  | CH-819337-net=192.168.0.35                 | CC-Ubuntu16.04 | m1.small  |
| 10f5f689-0975-4e8b-9e1e-0fdbe968b086 | spathan-516-2                 | ACTIVE  | CH-819337-net=192.168.0.34                 | CC-Ubuntu16.04 | m1.small  |
| fb858c85-8702-4ae2-8e4f-33ce672c817b | spathan-516-1                 | ACTIVE  | CH-819337-net=192.168.0.33, 129.114.111.85 | CC-Ubuntu16.04 | m1.small  |
| 1420b190-5995-4cae-a4c5-985691a20a63 | rcarmick-hid404-Ubuntu16.04.3 | SHUTOFF | CH-819337-net=192.168.0.19                 | CC-Ubuntu16.04 | m1.medium |
| 8fb6376e-48e0-44cc-aa36-c89ead7d5092 | rrufael-703-01                | SHUTOFF | CH-819337-net=192.168.0.11                 | CC-Ubuntu16.04 | m1.medium |
+--------------------------------------+-------------------------------+---------+--------------------------------------------+----------------+-----------+
```

Make sure you associate all your instances to the floating IP in the same
manner. As you can see from the `openstack server list` command above, there are
2 addresses shown for the `spathan-516-1` instance. One is the Private IP and
the another is the floating IP that you associated your instance with.

## Access the Instances from your own VM
Once you have associated all instances with floating IPs and all your instances
are up and running. You should now be able to SSH to all your instances using
the floating IP from the terminal of your own VM. This is because of the
SSH-Keypair you had added in the earlier steps. 

Run the following commands to SSH to the instances:

`ssh cc@<floatingIPofInstance1>`

`ssh cc@<floatingIPofInstance2>`

`ssh cc@<floatingIPofInstance3>`

## Generating Passwordless SSH Key-Pairs on Instances
The next step is to copy the public keys on one instance into the
authorized_keys file of the other instances.
  * For this, open 3 terminals. run the commands from your own VM:
  
  `ssh cc@<floatingIPofInstance1>`  
  `ssh cc@<floatingIPofInstance2>`  
  `ssh cc@<floatingIPofInstance3>`

  * Open the public key file contents of instance1(id_rsa_01.pub) using cat
    command:
  
  `cat ~/.ssh/id_rsa_01.pub`

    Copy the contents and paste it into the ~/.ssh/authorized_keys file of
    instance2 and instance3.

  * Then, open the public key file contents of instance2(id_rsa_02.pub) using cat command:
  
  `cat ~/.ssh/id_rsa_02.pub`

    Copy the contents and paste it into the ~/.ssh/authorized_keys file of
    instance1 and instance3.

  * Next, open the public key file contents of instance3(id_rsa_02.pub) using
    cat command:
  
  `cat ~/.ssh/id_rsa_03.pub`
    
    Copy the contents and paste it into the ~/.ssh/authorized_keys file of
    instance1 and instance2.

Once this is done, the authorized_keys file on one instance should have the
public keys of all the other instances, including the public key of your own VM
(since you had added that earlier while creating the instance).

## Accessing instances
Now, you should be able to ssh between these instances using either floatingIP
or the PrivateIP. But be sure to provide the private key of the instance that
you are logging in from. Run the following commands to verify:
  * First login to one of the instance e.g. instance1 using 
  
   `ssh cc@<floatingIPofInstance1>` from your own VM.
 
  * Now ssh to another instance from instance1, either 2 or 3 using:
  
  `ssh -i <privateKeyofInstance1:e.g.id_rsa_01>
   cc@<floatingIPofInstance2/PrivateIPofInstance2>`
  
  * The prompt should now change to instance2. 
  * Try to ssh from instance1 to instance3, from instance2 to
    instance1/instance3 or from instance3 to instance1/instance2. 
  * It should login in successfully to these instances.
  * Instead of providing the private_key, you can avoid that by starting
    ssh_agent process and then adding the private key using ssh add. To do this,
    run the following commands on all instances with the correct private_key
    name:
  
  `eval "$(ssh-agent -s)"`
  
  `ssh-add ~/.ssh/id_rsa`
  
Now you should be able to login from one instance to another using ssh and
without providing the private key.
  
Our goal was to set up a cluster using the instances created on Openstack. Now
you are able to successfully login to each of these instances and the login from
one instance to another is also possible. 

## References
<https://docs.openstack.org/python-openstackclient/pike/>

<https://docs.openstack.org/mitaka/cli-reference/common/cli_install_openstack_command_line_clients.html#install-the-openstack-client>

<https://docs.openstack.org/mitaka/cli-reference/common/cli_set_environment_variables_using_openstack_rc.html>

<https://docs.openstack.org/python-openstackclient/pike/cli/command-objects/floating-ip.html>

<https://docs.openstack.org/releasenotes/python-novaclient/queens.html>

<https://www.tecmint.com/create-deploy-and-launch-virtual-machines-in-openstack/>

<https://www.tecmint.com/ssh-passwordless-login-using-ssh-keygen-in-5-easy-steps/>


## Running it on Container
git clone the tutorial directory on your machine

Make sure you have your `cc-openrc.sh` file in the same directory as your Dockerfile

To build the image, simply run the following command from your terminal:

`sudo docker build -t openstack-tutorial .`

To login to the container in interactive mode, run the command:

`sudo docker run -p 8080:8080 --rm -it openstack-tutorial bash`

Once you login, you have to source your cc-openrc.sh file:

`source cc-openrc.sh`

Now you will be able to execute all the openstack commands on container 
and create the cluster as shown above.

Example output:
```
(ENV2) spathan@spathan-VirtualBox:~/github/cloudmesh-community/hid-sp18-516/tutorial$ sudo docker run -p 8080:8080 --rm -it openstack-tutorial bash
root@c41a045021ff:/app# ls
cc-openrc.sh
root@c41a045021ff:/app# source cc-openrc.sh 
Please enter your OpenStack Password: 
root@c41a045021ff:/app# nova list
+--------------------------------------+-----------------+---------+-------------+-------------+---------------------------------------------+
| ID                                   | Name            | Status  | Task State  | Power State | Networks                                    |
+--------------------------------------+-----------------+---------+-------------+-------------+---------------------------------------------+
| 1420b190-5995-4cae-a4c5-985691a20a63 | rcarmick-404-01 | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.19                  |
| e27a1cc6-a698-4257-8561-636ed7bb1d08 | rlambadi-514-01 | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.58, 129.114.111.59  |
| 70b6f5cb-686f-49f9-8ac0-caf3ad0907a5 | rlambadi-514-02 | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.54, 129.114.33.98   |
| d37292ad-7172-45f6-bef4-e3e795c98e05 | rrufael-703-01  | SHUTOFF | powering-on | Shutdown    | CH-819337-net=192.168.0.55, 129.114.110.186 |
| 78538d78-1bb0-434f-8605-413997cc55ef | rrufael-703-02  | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.59, 129.114.110.10  |
| 01621d47-ced4-4a04-9a63-f74a1ae0098e | rrufael-703-03  | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.38, 129.114.33.5    |
| ccca4aff-777d-4856-98b9-55d3a37df4d7 | skhande-511-01  | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.44, 129.114.33.75   |
| d61fdc1f-9622-4937-9d3a-8b52228e442b | skhande-511-02  | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.45                  |
| f92dc70d-6389-42dd-814e-fb674d6665e2 | skhande-511-03  | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.46                  |
| fb858c85-8702-4ae2-8e4f-33ce672c817b | spathan-516-1   | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.33, 129.114.111.85  |
| 10f5f689-0975-4e8b-9e1e-0fdbe968b086 | spathan-516-2   | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.34, 129.114.111.86  |
| 7e443fc1-f1ce-4821-8710-e461a1f4a27f | spathan-516-3   | SHUTOFF | -           | Shutdown    | CH-819337-net=192.168.0.35, 129.114.111.90  |
+--------------------------------------+-----------------+---------+-------------+-------------+---------------------------------------------+
root@c41a045021ff:/app# exit
```
