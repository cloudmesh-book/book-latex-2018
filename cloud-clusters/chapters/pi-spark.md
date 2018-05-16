
## Tutorial to setup Spark on a Raspberry PI cluster

### Install Spark with Hadoop preinstalled

This tutorial provides step-by-step guide to install Spark cluster on a pre-installed hadoop on a cluster of raspberry pi.

### Hadoop Setup

Follow the turorial in [[handbook](http://cyberaide.org/papers/vonLaszewski-bigdata.pdf)] to install Haddop on Pi cluster provided in the handbook and verify that hadoop is properly installed, once done proceed with following steps. 	
```bash 
cd ~
```

### Download the most recent version from below website

* [[Apache Spark](https://www.apache.org/dyn/closer.lua/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz)] 

Run the command
```bash 
wget http://apache.claz.org/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz 
```

### Installation

#### Create the folder for storing spark install files

```bash 
sudo mkdir -p /opt/spark-2.3.0
sudo chown -R hduser:hadoop /opt/spark-2.3.0 
```

#### Unzip the tar fle into desitnaiton folder

```bash tar -xzf spark-2.3.0-bin-hadoop2.7.tgz -C /opt/spark-2.3.0 --strip-components=1 ```

#### Update PATH

```bash 
echo "export SPARK_HOME=/opt/spark-2.3.0" >> ~\.bashrc
echo "export PATH=$PATH:$SPARK_HOME/bin" >> ~\.bashrc
echo "export PATH=$PATH:$SPARK_HOME/sbin" >> ~\.bashrc
source ~/.bashrc 
```

#### Copy the template from spark-env.sh.template to spark-env.sh

```bash 
cp $SPARK_HOME/spark-env.sh.template $SPARK_HOME/spark-env.sh 
```

### Edit spark-env.sh file to change configurations

```bash 
vi $SPARK_HOME/spark-env.sh 
```

#### Edit slaves file on master node

```bash 
cd $SPARK_HOME/conf
cp slaves.template slaves
vi slaves
``` 

Update below configurations

```
SPARK_MASTER_HOST = 169.254.24.132
SPARK_WORKER_MEMORY = 512m
```

Add below hostnames to the file

* pimaster (hostname of master node)
* pislave (hostname of slave node)
* pislave02 (hostname of other slave ndoes)

### Test Setup	

Run spark-shell from command line and if you see something like this 
```bash 
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /___/ .__/\_,_/_/ /_/\_\   version 2.3.0
      /_/
         
Using Scala version 2.11.8 (Java HotSpot(TM) Client VM, Java 1.8.0_65)
```

### Repeat above steps on all worker/slave nodes
### Alternative to running above steps for each worker node
Run the below command on each worked ndoe to create spark directory 
```bash 
sudo mkdir -p /opt/spark-2.3.0`
sudo chown -R hduser:hadoop /opt/spark-2.3.0
```

Run below command on master node for each slave node
``` bash
rsync -avxP /opt/spark-2.3.0 hduser@pislave:/opt
```
Run the above command only after creating the /opt/spark-2.3.0 on all worker nodes
```bash 
sudo mkdir -p /opt/spark-2.3.0
sudo chown -R hduser:hadoop /opt/spark-2.3.0
```
#### Set home and PATH on all worked nodes

```bash 
echo "export SPARK_HOME=/opt/spark-2.3.0"
echo "export PATH=$PATH:$SPARK_HOME/bin"
source ~/.bashrc
```

### Start the spark server and workers

#### Run the below commands on master node to start master and worker nodes

```bash 
$SPARK_HOME/sbin/start_master.sh 
```

```bash 
$SPARK_HOME/sbin/start_slaves.sh 
```

### Login to below URL to see if spark master and all workers are running 

```http://master_host_name:8080```
