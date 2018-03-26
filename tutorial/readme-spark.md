hid-sp18-412
hid-sp18-410
hid-sp18-408
hid-sp18-406

## Steps for Setting up the Spark on the Rasberry Pi Cluster (Pre-requisite - Hadoop should be installed)

   ### Navigate to the path /home/hduser 
	
       cd /home/hduser 

   ### Begin the download with the following command 
	
	   wget http://apache.claz.org/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz
	   
	   
   ### Unzip the tar file of the spark
	
	   tar -xzf spark-2.3.0-bin-hadoop2.7.tgz
	   
   ### Move the spark that is extracted to the directory /opt/
		
	   sudo  mv spark-2.3.0-bin-hadoop2.7 /opt/
	   
   ### Navigate to the directory /opt/spark-2.3.0-bin-hadoop2.7/conf
	
	   cd /opt/spark-2.3.0-bin-hadoop2.7/conf
	   
   ### Copy the template from spark-env.sh.template to spark-env.sh
	
		cp spark-env.sh.template spark-env.sh
		
   ### Open spark-env.sh then set the spark host and the worker memory.
		
		vi spark-env.sh
		- SPARK_MASTER_HOST = 169.254.24.132
		- SPARK_WORKER_MEMORY = 512m
	