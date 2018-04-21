# Tutorial: Zookeeper Installation

Authored by rcarmick (hid-sp18-404)
- https://github.com/cloudmesh-community/hid-sp18-404/blob/master/tutorial/zookeeper.md	

# Installation of Zookeeper in Ubuntu
This tutorial was developed in a virtualized Ubuntu 16.4 i386 
running through Oracle VM VirtualBox on a host Windows10 Home host system

Installation of Zookeeper on Ubuntu requires the prior installation of Hadoop. 
Java OpenJDK is a prerequisite for both Hadoop and Zookeeper


## Install Java-OpenJDK-8
Run system package updates
```
sudo apt-get update
sudo apt-get upgrade
```
Download and install Java OpenJDK-8
```
sudo apt-get install openjdk-8-jdk
```

## Install and configure Hadoop

The Hadoop prerequisite portion of the tutorial follows the instructions at http://idroot.net/linux/install-apache-hadoop-ubuntu-16-04-lts/

Setup a Hadoop user and Hadoop group which will become the owner of Zookeeper instances later.
```
sudo addgroup hadoopgroup
sudo adduser -ingroup hadoopgroup hadoopuser
```

Create an SSH key for the hadoopuser
```
sudo apt-get install ssh
su - hadoopuser
ssh-keygen -t rsa -P ""
cd $HOME/.ssh
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
chmod 600 authorized_keys
```

Download and unpack the latest Apache Hadoop
```
sudo wget http://www-us.apache.org/dist/hadoop/common/hadoop-3.0.0/hadoop-3.0.0.tar.gz
tar xzf hadoop-3.0.0.tar.gz
mv hadoop-3.0.0 hadoop
```


Configure Apache Hadoop
Begin configuration with the Hadoop variables in bashrc
```
gedit ~/.bashrc
```
 
Append the following to the bottom of bashrc
```
export HADOOP_HOME=/home/hadoop
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
```
Ensure the HADOOP_HOME variable is set to the correct path to your Hadoop installation. 

 
Apply bashrc variables to the current session
```
source ~/.bashrc
```

Navigate to the hadoop configuration folder to use gedit to configure necessary files
```
cd $HADOOP_HOME/etc/hadoop
```


Edit $HADOOP_HOME/etc/hadoop/hadoop-env.sh to set the JAVA_HOME environment
by appending a JAVA_HOME variable to the bottom of the file. 
Locate the path for your installation of Java.

```
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-i386
```

 
Edit core-site.xml to:
```
<configuration>
<property>
  <name>fs.default.name</name>
    <value>hdfs://localhost:9000</value>
</property>
</configuration>
```

Edit hdfs-site.xml. The file path in the value fields should match your hadoop installation.

```
<configuration>
<property>
 <name>dfs.replication</name>
 <value>1</value>
</property>
<property>
  <name>dfs.name.dir</name>
    <value>file:///home/hadoop/hadoopdata/hdfs/namenode</value>
</property>
<property>
  <name>dfs.data.dir</name>
    <value>file:///home/hadoop/hadoopdata/hdfs/datanode</value>
</property>
</configuration>
```


Edit mapred-site.xml to:

```
<configuration>
 <property>
  <name>mapreduce.framework.name</name>
   <value>yarn</value>
 </property>
</configuration>
```


Edit yarn-site.xml to: 

```
<configuration>
 <property>
  <name>yarn.nodemanager.aux-services</name>
    <value>mapreduce_shuffle</value>
 </property>
 </configuration>
```


Format namenode
```
hdfs namenode -format
```

Start hadoop services
```
cd $HADOOP_HOME/sbin/
start-dfs.sh
start-yarn.sh
```



## Install single instance of Zookeeper
The Zookeeper tutorial builds on the tutorial at https://my-bigdata-blog.blogspot.com/2017/07/apache-Zookeeper-install-Ubuntu.html
You must have Java installed and JAVA_HOME set, as described in the Hadoop prerequisite portion.

This tutorial's JAVA_HOME directory is
```
/usr/lib/jvm/java-8-openjdk-i386
```
 
First, we add a zookeeper user to the hadoopgroup
```
sudo adduser --ingroup hadoopgroup zookeeper
```

 
Download and unpack the latest Apache Zookeeper
```
sudo wget http://apache.cs.utah.edu/zookeeper/current/zookeeper-3.4.10.tar.gz
tar xvf zookeeper-3.4.10.tar.gz
```

 
Move and rename the instance of zookeeper to your desired directory. 
```
sudo mv zookeeper-3.4.10 /home/zookeeper
```
 

Navigate to the conf folder in the zookeeper isntance. 
The zookeeper configuration file is by default named *zoo_sample.cfg* 
This file is going to be edited to correct the dataDir variable to the 
correct directory of the zookeeper instance and set the clientPort.
Since the zookeeper directory for this instance is /home/zookeeper 
the dataDir will be set to /home/zookeeper/data. 
Set yours accordingly. 
 
 
Edit zoo_sample.cfg to reflect the changes to dataDir and clientPort
```

dataDir=/home/zookeeper/data

clientPort=2181

```


Finalize the creation zoo.cfg file with the command
```
mv zoo_sample.cfg zoo.cfg
```

Navigate to the Zookeeper instance's conf directory (/home/zookeeper/conf) 
and create a java.env file to create log parameters. 
java.env should contain two lines of text in the format:

```
ZOO_LOG4J_PROP="INFO,ROLLINGFILE"
ZOO_LOG_DIR="/home/zookeeper/logs"
```


The file path set in the *ZOO_LOG_DIR* variable should be a directory called *logs* within the zookeeper instance. 


The *data* and *logs* directories need to be made in the zookeeper instance directory
```
mkdir /home/zookeeper/data
mkdir /home/zookeeper/logs
```
 
Create a myid file in the data directory
```
echo "1" /home/zookeeper/data/myid
```


Change the ownership of the zookeeper instance
```
sudo chown -R zookeeper:hadoopgroup /home/zookeeper
```

 
The Zookeeper server can now be started with the command
```
sudo su -p - zookeeper -c "/usr/local/zookeeper/bin/zkServer.sh start"
```

 
The status of the server is tested with the command 
```
echo srvr | nc localhost 2181
```
 
 
The server is shutoff with the command
```
sudo su -p - zookeeper -c "/usr/local/zookeeper/bin/zkServer.sh stop"
```

## Deploy multiple instances of Zookeeper
To deploy multiple isntances of Zookeeper, repeat the single isntance steps with the following changes

When unpacking and renaming Zookeeper from the tar.gz file, duplicate the unpacked instance with an iterated name.

```
tar xvf zookeeper-3.4.10.tar.gz
sudo mv zookeeper-3.4.10 /usr/local/zookeeper2
```


When confuguring zoo_sample.cfg and converting it to zoo.cfg, update the dataDir for the second instance.
Also iterate the clientPort from a starting clientPort of 2181

```
**dataDir=/home/zookeeper2/data**
# the port at which the clients will connect
**clientPort=2182**
``` 

 
Update the ZOO_LOG_DIR variable in the second instance's java.env
```
ZOO_LOG4J_PROP="INFO,ROLLINGFILE"
ZOO_LOG_DIR="/home/zookeeper2/logs"
```

 
When creating the data and log directories, update the directory.
``` 
mkdir /home/zookeeper2/data
mkdir /home/zookeeper2/logs 
```
 
 
When creating the myid file in the data directory
```
echo "2" /home/zookeeper/data/myid
```
 
Change the ownership of the second instance.
```
sudo chown -R zookeeper:hadoop /usr/local/zookeeper2
```

The second Zookeeper server can  be started with the command
```
sudo su -p - zookeeper -c "/usr/local/zookeeper2/bin/zkServer.sh start"
```

 
The status of the second server is tested with the command 
```
echo srvr | nc localhost 2182
```
 
 
The second server is shutoff with the command
```
sudo su -p - zookeeper -c "/usr/local/zookeeper2/bin/zkServer.sh stop"
```
 
 
