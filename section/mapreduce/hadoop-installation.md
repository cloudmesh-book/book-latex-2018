# HADOOP	

Hadoop is an open source framework for storage and processing of large datasets
on commodity clusters. Hadoop internally uses its own file system called 
HDFS (Hadoop Distributed File System). In this tutorial our main focus is on 
using Hadoop 2.6.0 version along with the Yarn resource manager. We will be 
focusing more on the Hadoop installation in this chapter. 

## INSTALLATION OF HADOOP

First we will take a look on how to install Hadoop 2.6.0 on Ubuntu 16.04. We may
need a prior folder structure to do the installation properly. 

### Create Directories

```
$ mkdir ~/software
$ mkdir ~/zips
```

We keep these two folders to keep the softwares in one folder and the other folder will keep the original zip files.

In case you have not installed a text editor you need to install emacs or vim. Here let's use vim.

### Install VIM

```
$ sudo apt-get install vim
```

The next important thing is to set up ssh to localhost. 

### Install SSH and Rsync

```
$ sudo apt-get install ssh
$ sudo apt-get install rsync
```

Then try to ssh into localhost :

```
$ ssh localhost
```
If it works make sure you exit by doing the following,

```
$ exit
```

### Install Java

Here we need to install Java in the machine. If you have 
already installed Java version, make sure you are using the recommended Java version in this tutorial. 

```
$ wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz"
```






 


