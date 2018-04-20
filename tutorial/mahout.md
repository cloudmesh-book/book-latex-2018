# Tutorial: Mahout Installation

Authored by rcarmick (hid-sp18-404)
- https://github.com/cloudmesh-community/hid-sp18-404/blob/master/tutorial/mahout.md

# Installation of Mahout on Ubuntu

This tutorial was developed in a virtualized Ubuntu 16.4 i386 
running through Oracle VM VirtualBox on a host Windows10 Home host system

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

## Install and configure Apache Maven

Maven 3.3.9 will install from the command 
```
sudo apt-get install maven
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
ssh-copy-id -i ~/.ssh/id_rsa.pub slave-1
ssh slave-1
```

Download and unpack the latest Apache Hadoop
```
sudo wget http://www-us.apache.org/dist/hadoop/common/hadoop-3.0.0/hadoop-3.0.0.tar.gz
tar xzf hadoop-3.0.0.tar.gz
mv hadoop-3.0.0 hadoop
```


Fourth, configure Apache Hadoop
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

## Install Mahout

Create and navigate to the directory where you wish to isntall Mahout
```
mkdir /home/user/mahout
cd /home/user/mahout
```

Download and extract your desired version of Mahout
```
wget http://mirrors.sonic.net/apache/mahout/0.12.0/apache-mahout-distribution-0.12.0.tar.gz
sudo tar -zxvf apache-mahout-distribution-0.12.0.tar.gz
```

Rename the mahout directory
```
mv apache-mahout-distribution-0.12.0 mahout
```

Edit bashrc to add MAHOUT_HOME
```
export MAHOUT_HOME=/home/user/mahout
export PATH=$MAHOUT_HOME/bin:$PATH
```

Mahout is now installed. 
