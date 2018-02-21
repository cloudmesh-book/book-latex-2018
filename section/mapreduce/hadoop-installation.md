# HADOOP	

Hadoop is an open source framework for storage and processing of large datasets on commodity clusters. Hadoop internally uses its own file system called  HDFS (Hadoop Distributed File System). In this tutorial our main focus is on using Hadoop 2.6.0 version along with the Yarn resource manager. We will be focusing more on the Hadoop installation in this chapter.

## Prerequisits

We assume that you have emacs, ssh, and rsync installed

    $ sudo apt-get install emacs
    $ sudo apt-get install ssh
    $ sudo apt-get install rsync


### User and User Group Creation

In installing hadoop, for the security reasons we will stick to a specific user for hadoop and a specific user group.

    $ sudo addgroup hadoop_group
    $ sudo adduser --ingroup hadoop_group hduser1
    $ sudo adduser hduser1 sudo


After this point we are completed giving sudo privileges to the created user in the specific user group.

### Configuring SSH

Here we have to configure ssh for the created user for security in the hadoop installation.
Run the following commands to configure ssh.


    $ su – hduser1
    $ ssh-keygen -t rsa

After this step you will see some console screen as shown below. Follow the instructions in the command line.

When you see the following console input, press ENTER.

    Enter file in which to save the key (/home/hduser1/.ssh/id_rsa):

Next you will be asked to enter a password for ssh configuration,


    Enter passphrase (empty for no passphrase):

Here enter the same password 


    Enter same passphrase again:


Finally you will see something like this after these steps are finished.


    Generating public/private rsa key pair.
    Enter file in which to save the key (/home/hduser1/.ssh/id_rsa):
    Created directory '/home/hduser1/.ssh'.
    Enter passphrase (empty for no passphrase):
    Enter same passphrase again:
    Your identification has been saved in /home/hduser1/.ssh/id_rsa.
    Your public key has been saved in /home/hduser1/.ssh/id_rsa.pub.
    The key fingerprint is:
    SHA256:0UBCPd6oYp7MEzCpOhMhNiJyQo6PaPCDuOT48xUDDc0 hduser1@messi
    The key's randomart image is:
    +---[RSA 2048]----+
    |    .+ooo        |
    | .   oE.oo       |
    |+  .. ...+.      |
    |X+=  .  o..      |
    |XX.o  o.S        |
    |Bo+ + .o         |
    |*o * +.          |
    |*.. *.           |
    | +.o..           |
    +----[SHA256]-----+


You have successfully configured ssh.


### Install Java

First log on to the newly created user :

    $ su - hduser1
    
    $ mkdir -p ~/cloudmesh/bin
    $ cd ~/cloudmesh/bin
    $ wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz"
    $ tar xvzf jdk-8u161-linux-x64.tar.gz

## Installation Of Hadoop

First we will take a look on how to install Hadoop 2.6.0 on Ubuntu 16.04. We may
need a prior folder structure to do the installation properly. 


    $ cd ~/cloudmesh/bin/
    $ wget https://archive.apache.org/dist/hadoop/core/hadoop-2.6.0/hadoop-2.6.0.tar.gz
    $ tar -xzvf hadoop-2.6.0.tar.gz


### Add Environmental Variables

In Ubuntu the environmental variables are setup in a file called bashrc at it can be accessed the following way

    $ emacs ~/.bashrc



where is hadoop comming from


    export JAVA_HOME=~/cloudmesh/bin/jdk1.8.0_161
    export HADOOP_HOME=~/cloudmesh/bin/hadoop-2.6.0
    export YARN_HOME=$HADOOP_HOME
    export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
    export PATH=$HADOOP_HOME/bin:$JAVA_HOME/bin:$PATH

In Emacs to save the file Ctrl+X+S and Ctrl+X+C to exit.
After editing you must update the variables in the system.


    $ source ~/.bashrc
    $ java -version

If you have installed things properly there will be no errors. It will show the version as follows,


    java version "1.8.0_161"
    Java(TM) SE Runtime Environment (build 1.8.0_161-b12)
    Java HotSpot(TM) 64-Bit Server VM (build 25.161-b12, mixed mode)

And verifying the hadoop installation,


    $ hadoop

If you have successfully installed this, there must be a message shown as below.

```
Usage: hadoop [--config confdir] COMMAND
       where COMMAND is one of:
  fs                   run a generic filesystem user client
  version              print the version
  jar <jar>            run a jar file
  checknative [-a|-h]  check native hadoop and compression libraries availability
  distcp <srcurl> <desturl> copy file or directories recursively
  archive -archiveName NAME -p <parent path> <src>* <dest> create a hadoop archive
  classpath            prints the class path needed to get the
  credential           interact with credential providers
                       Hadoop jar and the required libraries
  daemonlog            get/set the log level for each daemon
  trace                view and modify Hadoop tracing settings
 or
  CLASSNAME            run the class named CLASSNAME

Most commands print help when invoked w/o parameters.
```



