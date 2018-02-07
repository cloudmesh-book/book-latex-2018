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
$ cd ~/software
```

```
$ wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz"
```
Unzip the files
```
$ tar xzf jdk-8u161-linux-x64.tar.gz
```

Then move the zip files to the zip folder

```
$ mv jdk-8u161-linux-x64.tar.gz ~/zips
```
### Add Environmental Variables

In Ubuntu the environmental variables are setup in a file called bashrc at it can be accessed the following way

```
$ vim ~/.bashrc
```

In the opened file press Insert Key.
Then copy and paste the following content in the end of the file. You can got to the end of the file by pressing
ESC Then, SHIFT+G+A. This will take you to the final line of the bashrc file. 

```
export JAVA_HOME=~/software/jdk1.8.0_161
export HADOOP_HOME=~/software/hadoop-2.6.0
export YARN_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export PATH=$HADOOP_HOME/bin:$JAVA_HOME/bin:$PATH
```

After editing you must update the variables in the system

```
$ source ~/.bashrc
$ java -version
```
If you have installed things properly there will be no errors. It will show the version as follows,

```
java version "1.8.0_161"
Java(TM) SE Runtime Environment (build 1.8.0_161-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.161-b12, mixed mode)
```
And verifying the hadoop installation,

```
$ hadoop
```
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

### Setup Password-less SSH

```
$ ssh localhost
```

In case of this task need the password, follow the below mentioned commands.

```
$ ssh-keygen -t rsa
(hit enter to the default file name)
(add a password for the passphrase section)
```

Then we need to add the generated key into authorized key list by running the following commands.

```
$ cd ~/.ssh
$ cat id_rsa.pub>>authorized_keys
```

Then try to ssh again by running the following commands.

```
$ ssh localhost
$ exit
```
This will log you into localhost and log you out.

If you have completed up to this part, you have successfully completed hadoop installation in your machine and in the next lab we'll discuss about Hadoop configuration and running an example.


