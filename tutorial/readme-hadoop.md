hid-sp18-412
hid-sp18-410
hid-sp18-408
hid-sp18-406

# Rasberry Pi Hadoop Spark Cluster

## Initial Configuration

a> Login to the terminal and change password for the Rasberry pi 

	passwd pi
	Enter the password as the snowcluster 

b> Next, use `raspi-config` to configure the OS from a terminal window

	sudo raspi-config in a terminal window

c> In the configuration window do the following

	1. Select Interfacing Options
	2. Navigate to and select SSH
	3. Choose Yes
	4. Select Ok
	5. Choose Finish

d>Now, we need to check if we are able to connect to the rasberry pi from the different pc or another rasberry pi.  
  Login to the Rasberry pi 1, and type in a terminal the below command

	ifconfig
	

We use this command to identify the etho ipaddress returned via `ifconfig` command. We connect the same ethernet to a laptop and do the ssh to the respective raspberry pi 1 ip address to check if the ssh has been successfully enabled.

e> Next repeat the steps from the a to d on all other 4 Rasberry pi's.


	HostNames
	sudo vi /etc/hosts

	piHadoopmaster 169.254.24.132
	piHadoopslave1 169.254.35.145
	piHadoopslave2 169.254.87.91
	piHadoopslave3 169.254.225.63
	piHadoopslave4 169.254.190.73

f>After changing then reboot all the nodes.

g>Login to the worker1 (piHadoopslave1) then, open the `etc/hosts` and update it as below
	
	169.254.35.145 PiHadoopSlave1
	169.254.24.132 PiHadoopMaster

Then reboot and verify the hostname with command:

	hostname
	hostname -i

h>Now repeat this step g for all other 3 workers.

## Creating a new group and user (Perform this step on master and other 4 workers)

a> Connect to the master (make sure to check the hostname)

b> Create hadoop group with the below command

		sudo addgroup hadoop

c> Add the hduser to the hadoop group which we have created.
	
		sudo adduser --ingroup hadoop hduser 

d> Add hduser to the sudoers list 

		sudo adduser hduser sudo

e> Switch user to the hduser

		su hduser 

(password: snowcluster)

## Generating the ssh keys (Perform these steps in master and all the workers)

a> Generate the ssh key using the following commands. 

	cd ~
	mkdir .ssh 
	
	ssh-keygen  -t rsa -P ""

	cat /home/hduser/.ssh/id_rsa.pub >> /home/hduser/.ssh/authorized_keys
	chmod 600 authorized_keys

b> Copy this key from master to other workers to enable the password less ssh using following command

	ssh-copy-id -i ~/.ssh/id_rsa.pub <hostname of master/slave-1>

c> Make sure you are able to verify password less ssh using following command

	$ ssh <hostname of master/slave-1>


d> Login to the hduser 

	su hduser

e> Copy the contents from the id_rs.pub to the authorized_keys

	sudo cat /home/hduser/.ssh/id_rsa.pub >> /home/hduser/.ssh/authorized_keys


## Installing Hadoop

 a> Download hadoop

	wget ftp://apache.belnet.be/mirrors/ftp.apache.org/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz 

 b> Create a new directory opt (if the directory does not exist)

	sudo mkdir /opt  
 c> Navigate to the home directory
	cd ~
 d> Unzip and change ownership
	sudo tar -xvzf hadoop-2.7.1.tar.gz -C /opt/  
	cd /opt  
	sudo chown -R hduser:hadoop hadoop-2.7.1/ 

## Setting the Environment Variables by modifying the bashrc file (Perform all these steps in master and all other workers)

a> Open the bashrc file
	vi ~/.bashrc

b> Copy the following lines at the end of the bashrc file 

	export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::")  
	export HADOOP_HOME=/opt/hadoop-2.7.1  
	export HADOOP_MAPRED_HOME=$HADOOP_HOME  
	export HADOOP_COMMON_HOME=$HADOOP_HOME  
	export HADOOP_HDFS_HOME=$HADOOP_HOME  
	export YARN_HOME=$HADOOP_HOME  
	export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop  
	export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop  
	export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin 

c> Execute bashrc

	source ~/.bashrc
	hadoop version

   You will see output similar to 
	
	Hadoop 2.7.1
	Subversion https://git-wip-us.apache.org/repos/asf/hadoop.git -r 15ecc87ccf4a0228f35af08fc56de536e6ce657a
	Compiled by jenkins on 2015-06-29T06:04Z
	Compiled with protoc 2.5.0
	From source with checksum fc0a1a23fc1868e4d5ee7fa2b28a58a
	This command was run using /opt/hadoop-2.7.1/share/hadoop/common/hadoop-common-2.7.1.jar


## Configure hadoop 2.7.1 (Perform this on the master and all the other workers)

a> Login to the master and go to the directory that contains all the configuration files of Hadoop. We want to edit the `hadoop-env.sh` file and we need to configure `JAVA_HOME` manually in this file, Hadoop seems to ignore our existing $JAVA_HOME.
Execute the following command to navigate to the hadoop configuration directory
	
	cd $HADOOP_CONF_DIR
 
b> Open the hadoop-env.sh file.

	vi hadoop-env.sh 

c> Update export statement 

	export JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/

## Edit the XMl Files 

## Steps for Master

 We need to edit core-site.xml, hdfs-site.xml, mapred-site.xml and yarn-site.xml files to update the
 configurations.

a> Navigate to the hadoop configuration directory 

	 vi core-site.xml  

b> Then copy paste the following code between the configuration tags to the core-site.xml

vi core-site.xml

	<configuration>  
	<property>  
	<name>fs.default.name</name>  
	<value>hdfs://PiHadoopMaster:54310</value>  
	</property>  
	<property>  
	<name>hadoop.tmp.dir</name>  
	<value>/hdfs/tmp</value>  
	</property>

c> Edit the xml file `hdfs-site.xml`

	vi hdfs-site.xml  
	
d> Copy paste the code between the configuration tags appropriately to the hdfs-site.xml file

    <configuration>
	<property>
	<name>dfs.replication</name>
	<value>1</value>
	<property>
	  <name>fs.default.name</name>
	  <value>hdfs://PiHadoopMaster:54310</value>
	</property>
	<property>
	  <name>hadoop.tmp.dir</name>
	  <value>/hdfs/tmp</value>
	</property>
	</property>  

e> Rename the existing `mapred-site.xml.template` to the `mapred-site.xml`

	cp mapred-site.xml.template mapred-site.xml  

f> Open the mapred-site.xml file 

	vi mapred-site.xml  

   Then copy the following code to the file

	  <property>
	    <name>mapreduce.framework.name</name>
	    <value>yarn</value>
	  </property>
	  <property>
	    <name>mapreduce.map.memory.mb</name>
	    <value>256</value>
	  </property>
	  <property>
	    <name>mapreduce.map.java.opts</name>
	    <value>-Xmx210m</value>
	  </property>
	  <property>
	    <name>mapreduce.reduce.memory.mb</name>
	    <value>256</value>
	  </property>
	  <property>
	    <name>mapreduce.reduce.java.opts</name>
	    <value>-Xmx210m</value>
	  </property>
	  <property>
	    <name>yarn.app.mapreduce.am.resource.mb</name>
	    <value>256</value>
	  </property>

Note:
The first property tells us that we want to use Yarn as the MapReduce framework. The other properties are some specific settings for our Raspberry Pi. For example we tell that the Yarn Mapreduce Application Manager gets 256 megabytes of RAM and so does the Map and Reduce containers. These values allow us to actually run stuff, the default size is 1.5 GB which our Pi can't deliver with its 1GB RAM.

g> Open the `yarn-site.xml`

	vi yarn-site.xml

f> Then copy the following code to the 'yarn-site.xml' file

	<configuration>
	<property>
	<name>dfs.replication</name>
	<value>1</value>
	<property>
	  <name>fs.default.name</name>
	  <value>hdfs://PiHadoopMaster:54310</value>
	</property>
	<property>
	 <name>hadoop.tmp.dir</name>
	 <value>/hdfs/tmp</value>
	 </property>
	 </property>
	 <property>
	    <name>yarn.nodemanager.aux-services</name>
	    <value>mapreduce_shuffle</value>
	  </property>
	  <property>
	    <name>yarn.nodemanager.resource.cpu-vcores</name>
	    <value>4</value>
	  </property>
	  <property>
	    <name>yarn.nodemanager.resource.memory-mb</name>
	    <value>1024</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.minimum-allocation-mb</name>
	    <value>128</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.maximum-allocation-mb</name>
	    <value>1024</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.minimum-allocation-vcores</name>
	    <value>1</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.maximum-allocation-vcores</name>
	    <value>4</value>
	  </property>
	 <property>
	   <name>yarn.nodemanager.vmem-check-enabled</name>
	   <value>false</value>
	   <description>Whether virtual memory limits will be enforced for containers</description>
	</property>
	<property>
	   <name>yarn.nodemanager.vmem-pmem-ratio</name>
	   <value>4</value>
	   <description>Ratio between virtual memory to physical memory when setting memory limits for containers</description>
	</property>
	<property>
	  <name>yarn.resourcemanager.resource-tracker.address</name>
	  <value>RaspberryPiHadoopMaster:8025</value>
	</property>
	<property>
	  <name>yarn.resourcemanager.scheduler.address</name>
	  <value>RaspberryPiHadoopMaster:8030</value>
	</property>
	<property>
	 <name>yarn.resourcemanager.address</name>
	 <value>RaspberryPiHadoopMaster:8040</value>
	</property>
	</configuration>

This file tells Hadoop some information about this node, like the maximum number of memory and cores that can be used. We limit the usable RAM to 768 megabytes, that leaves a bit of memory for the OS and Hadoop. A container will always receive a memory amount that is a multitude of the minimum allocation, 128 megabytes. For example a container that needs 450 megabytes, will get 512 megabytes assigned.

## Edit XML files for the workers

## Prepare the HDFS directory by executing the below commands 

	sudo mkdir -p /hdfs/tmp  
	sudo chown hduser:hadoop /hdfs/tmp  
	chmod 750 /hdfs/tmp  
	hdfs namenode -format 

## Booting Hadoop

	cd $HADOOP_HOME/sbin  
	start-dfs.sh  
	start-yarn.sh 

If you want to verify that everything is working you can use the jps command. In the output of this command you can see that Hadoop components like the NameNode are running. The numbers can be ignored, they are process numbers.

	We can see the below output by executing the jps command 
	1297 NameNode
	1815 NodeManager
	1578 SecondaryNameNode
	1387 DataNode
	1723 ResourceManager
	2125 Jps


## Master - Worker Configuration

The host names of the workers should be added in the slaves file in the hadoop configuration directory

a> Navigate to Hadoop conf directory 

	cd $HADOOP_CONF_DIR
	vi slaves 

b> Then copy paste the following content 

	PiHadoopMaster
	PiHadoopSlave1
	PiHadoopSlave2
	PiHadoopSlave3
	PiHadoopSlave4

## Configurtion in Worker servers

configuration of the xml files in the below steps 

Navigate to the Hadoop Conf directory with the command 

	cd $HADOOP_CONF_DIR

vi core-site.xml

	<configuration>
	<property>
	  <name>fs.default.name</name>
	  <value>hdfs://PiHadoopMaster:54310</value>
	</property>
	<property>
	  <name>hadoop.tmp.dir</name>
	  <value>/hdfs/tmp</value>
	</property>
	</configuration>

	vi hdfs-site.xml

	<configuration>
	<property>
	<name>dfs.replication</name>
	<value>1</value>
	</property>

	</configuration>

cp mapred-site.xml.template mapred-site.xml
vi mapred-site.xml

	<configuration>
	<property>
	    <name>mapreduce.framework.name</name>
	    <value>yarn</value>
	  </property>
	  <property>
	    <name>mapreduce.map.memory.mb</name>
	    <value>256</value>
	  </property>
	  <property>
	    <name>mapreduce.map.java.opts</name>
	    <value>-Xmx210m</value>
	  </property>
	  <property>
	    <name>mapreduce.reduce.memory.mb</name>
	    <value>256</value>
	  </property>
	  <property>
	    <name>mapreduce.reduce.java.opts</name>
	    <value>-Xmx210m</value>
	  </property>
	  <property>
	    <name>yarn.app.mapreduce.am.resource.mb</name>
	    <value>256</value>
	  </property>

	</configuration>

vi yarn-site.xml

	<configuration>
	 <property>
	    <name>yarn.nodemanager.aux-services</name>
	    <value>mapreduce_shuffle</value>
	  </property>
	  <property>
	    <name>yarn.nodemanager.resource.cpu-vcores</name>
	    <value>4</value>
	  </property>
	  <property>
	    <name>yarn.nodemanager.resource.memory-mb</name>
	    <value>768</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.minimum-allocation-mb</name>
	    <value>128</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.maximum-allocation-mb</name>
	    <value>768</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.minimum-allocation-vcores</name>
	    <value>1</value>
	  </property>
	  <property>
	    <name>yarn.scheduler.maximum-allocation-vcores</name>
	    <value>4</value>
	  </property>
	</configuration>

## Prepare the HDFS directory by executing the below commands 

	sudo mkdir -p /hdfs/tmp  
	sudo chown hduser:hadoop /hdfs/tmp  
	chmod 750 /hdfs/tmp  
	hdfs namenode -format 

## Booting Hadoop

	cd $HADOOP_HOME/sbin  
	start-dfs.sh  
	start-yarn.sh 

If you want to verify that everything is working you can use the jps command. In the output of this command you can see that Hadoop components like the NameNode are running. The numbers can be ignored, they are process numbers.

	We can see the below output by executing the jps command 
	1297 NameNode
	1815 NodeManager
	1578 SecondaryNameNode
	1387 DataNode
	1723 ResourceManager
	2125 Jps


## REBOOT and start services

a) Reboot the Workers and Master 

b) Start Master 
	start-dfs.sh 
	start-yarn.sh

## TESTING THE CONFIGURATION OF MASTER_SLAVE

a) Make sure all the all the Worker servers are up and running

b) Execute the below command in Master
	
	hdfs dfsadmin -report

	(All the Live nodes including Master, total 5 nodes will be listed)

## ISSUES TO BE ADDRESSED	

After restarting the slaves, if the above cpmmand does not result 5 data nodes (master and 4 slaves)
then do the following on all slaves

If tmp does not exist

    sudo mkdir -p /hdfs/tmp  
    sudo chown hduser:hadoop /hdfs/tmp  
    chmod -R 755 /hdfs/tmp  
    hdfs namenode -format 

else

    cd $HADOOP_HOME/sbin
    stop-all.sh
    rm -Rf /hdfs/tmp/dfs/*
    hdfs namenode -format











 














