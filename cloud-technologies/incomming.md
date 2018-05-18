AWS API Gateway
===============

The AWS API Gateway [@hid-sp18-518-AWS-APIGateway] is used to manage
multiple RESTful services in a defined way. You can set up the API
Gateway using the CLI, CloudFormation or even Swagger templates. The API
Gateway is serverless and AWS will manage all of the underlying
infrastructure for you. The design allows you to configure the API
mapping and integrations. The API Gateway can then help you define
authentication/authorization controls, define the lifecycle for the
services and even track transactions for uses like billing.

AWS DeepLens
============

AWS DeepLens is the world's first wireless high definition video camera
which is optimized for Deep Learning. It comes with computer vision
model that can be used with the camera. Deeplens integrates with amazon
SageMaker and AWS Lambda.

Apart from configuring and running deep learning models, AWS Greengrass
can be programmed to run various lambda functions. There are many
pre-built models that can run instantly with
Deeplens. [@hid-sp18-522-deeplens]

Several Features of AWS DeepLens are as below:

Integrated with AWS

:   

Build custom models with Amazon SageMaker

:   

Broad framework support

:   

Fully programmable

:   

Custom built for deep learning

:   

Amazon Fargate
==============

AWS Fargate is a technology built on top of Amazon elastic container
services and Kubernetes services. It provides container management where
there is no requirement of cluster or infrastructure management.
Everything is handled at the container level and it scales seamlessly.

Running a container locally over docker is easy but there is a huge
overhead in running multiple containers in production like high
availability, resiliency, latency, scheduling and resource management.
ECS made scheduling and orchestration easy but there are many tasks that
it didn't handel like task definition,resource constraints,networking
and security. Fargate takes care of most of these tasks except resource
definition. Hence all the underlaying logistics are taken care by it.

Fargate uses the same task definition schema as ECS and can be launced
by ECS APIs.

Key features of Amazon Fargate:

-   Orchestration

-   Enable running containers without server and cluster management

-   Eliminates the need to choose server types

-   Eliminates infrastructure management

-   Seamless scaling

 [@hid-sp18-522-fargate]

Amazon Lightsail
================

Amazon Lightsail is amazon virtual server. It provides virtual private
servers which are pre-configured with storage where applications can be
deployed and managed. Lightsail provides compute, storage and networking
capabilities to deploy and manage web applications in cloud.

LightSail provides SSD based storage, virtual machine,a static IP and
DNS management at a very competing price. It has snapshot which has
stored backup of each nodes that are set-up. Static IP address can be
created which are fixed and assigned to instances. It provides two OS,
Amazon Linux and Ubuntu.

Lighsail is packed with range of operating system and application
templates that are installed with the creation of an instance. Some of
the application templates are Nginx,Node.js, Mean and Lamp.

Each instance of Lightsail gets a private IP address and a public IP
address which are accessible over web. [@hid-sp18-522-lightsail]

Amazon Glacier
==============

Amazon Glacier is an online file storage web service provided by Amazon
which can be used for data archiving and
backup [@hid-sp18-420-Amazon-Glacier]. Glacier is part of the Amazon Web
Services suite designed for long term storage of data that is accessed
infrequently. User can store virtually any kind of data in any format.

Amazon also provides Simple Storage Service for storing and retrieving
data but Glacier is much cheaper than S3. As per AWS documentation,


> ``For Amazon glacier, storage costs are a consistent \$0.004 per
> gigabyte per month, which is substantially cheaper than Amazon's own
> Simple Storage Service'' [@hid-sp18-420-Amazon-Glacier-FAQ].



> ``Customers can store data to Amazon Glacier with a significant
> saving as compared to on-premise storage. Amazon Glacier is designed
> to provide average annual durability of 99.999999999% for an
> archive'' [@hid-sp18-420-Amazon-Glacier].

Data is stored in Amazon
Glacier as archives. Archives can be deleted at any point of time and
billing will be updated accordingly.

Amazon Glacier provides three options for access to archives, from a few
minutes to several hours. The AWS Management console is used for Amazon
Glacier set up. User can upload and retrieve data programmatically in
later phases.

Amazon RDS
==========

Amazon RDS [@hid-sp18-420-amazon-RDS] stands for Amazon Relational
Database Service. Amazon RDS gives access to MySQL, MariaDB, Oracle, SQL
Server, or PostgreSQL database. It is a managed service provided by AWS
which can be used to manage different database administrative tasks.
User can select the type of RDS instance and accordingly AWS provides
capacity. RDS has capacity to resize as per requirement which enables
user to change from one instance type to another instance type without
losing its data. It is cost effective and the costing depends on the
instance type [@hid-sp18-420-amazon-RDS-FAQ].



> ``Amazon RDS can automatically backup database and keep that
> database software up to date with its latest version. RDS makes it
> easy to use replication to enhance database availability, improve
> data durability, or scale beyond the capacity constraints of a
> single database instance for read-heavy database workloads''
> [@hid-sp18-420-amazon-RDS-FAQ].

High
availability is achieved by built-in automated failover from primary
database to a replicated secondary database in case of any failure. This
replicated secondary database in sync with primary database.

Amazon Redshift
===============

Amazon Redshift is a product of amazon mainly designed as
datawarehouse service center that fully manages data warehousing and
makes it a very simple and cost-effective application that could be
used to analyze all the data using standard SQL interface and existing
Business Intelligence tools. Their website gives more details saying


> ``It allows you to run complex analytic queries against petabytes of
> structured data, using sophisticated query optimization, columnar
> storage on high-performance local disks, and massively parallel
> query execution'' [@hid-sp18-410-Amazon-Redshift].



It is an Internet hosting service and data warehouse product that was
announced in 2012 and it became a part of the bigger cloud services
project namely Amazon Web Services. Few stats about the technology and
its adoption -

> ``It is built on top of technology from the massive parallel
> processing (MPP) data-warehouse company ParAccel (later acquired by
> Actian), to handle large scale data sets and database
> migrations.Redshift differs from Amazon's other hosted database
> offering, Amazon RDS, in its ability to handle analytics workloads
> on big data data sets stored by a column-oriented DBMS principle''
> [@hid-sp18-410-AmazonWiki].



Amazon S3
=========

Amazon S3 is a simple storage service which mainly focuses on a
highly-scalable, reliable, and low-latency data storage infrastructure
at low costs [@hid-sp18-420-amazon-S3-FAQ]. Simple storage Service is a
web service provided by Amazon that can be used to store and retrieve
data. It can also be used for static website hosting for different web
applications. Important feature of S3 is that it is available at any
point of time and can be used to store virtually any kind of data in any
format [@hid-sp18-420-amazon-S3-FAQ].

One of the important features of using S3 is that it offers a highly
durable, scalable, and secure destination for backing up and archiving
critical data [@hid-sp18-420-amazon-S3]. As per AWS documentation,


> ``Amazon S3 is designed to deliver 99.999999999% durability, and it
> is used to store data for millions of applications used by market
> leaders in every industry'' [@hid-sp18-420-amazon-S3].



Amazon S3 provides versioning capability to provide even further
protection for stored data. It is easy to define lifecycle rules to
automatically migrate less frequently accessed data. User can store any
number of objects. Total volume is unlimited but one object size can
range from 0 bytes to 5 terabytes. With Amazon S3, user needs to pay
only for what the usage is. But price vary as per the chosen region of
S3.

Apache Atlas
============

Apache atlas is the novel adaptable platform which incorporates the
center set of the functional administration services. The Apache atlas
empowers the ventures to effectively meet the prerequisites inside the
Hadoop. Additionally, it delivers the integration of the entire data
environment. The database researchers, data analysts, and the data
administration group can take advantage of the open metadata management
and the administration capabilities can be utilized for the
organizations to create and make the catalog of their information
resources. These resources can be classified and collaborated inside the
venture effortlessly [@hid-sp18-412-Apache_Atlas_by_Maven].

There are three main core components of the Apache Atlas, Type System,
Graph Engine and Ingest/Export. The type system enables the modeling of
the metadata for the objects that are intended to be administered. The
metadata objects are represented by the *entities* which are the
instances of the *Types*. Inside the Apache Atlas, the metadata objects
are managed with the help of the graph model. The rich relationships
between the metadata objects are taken care by this approach by
providing the good adaptability and effective handling of the
relationships. Additionally, the graph engine also provides the
effective indexing by creating the relevant indices for the metadata
objects with the goal of providing the efficient search results. The
next component called ingest helps the users to post the metadata to the
Atlas. In contrast, the export component will help the users to expose
the metadata of the Atlas and creates an event specific to each change.
The end users will able to respond to these alterations in the real time
by consuming these change
events [@hid-sp18-412-Apache_Atlas_architecture].

Apache Avro
===========

Avro [@hid-sp18-421-AvroCloud] is a framework for data serialization,
where serialization is a process of translating object or data structure
into a format that can be stored. Apache Avro can translate very high
datastructure formats. It provides binary data format which is very fast
and compact. Avro can also provide Remote procedure calls.

Avro is completely based on schemas. Data is stored in file along with
the schema and can be read by any program, since schema is available
when ever data is read or written it can be used as dynamic scripting
languages.

Avro differs from similar systems like Thrift, Protocol Buffers by
schema evaluation, untagged data and dynamic typing.

Apache Chukwa
=============

Chukwa [@hid-sp-421-ChukwaCloud] is a data collection system built on
top of Hadoop to monitor large distributed file systems. It collects
data from various data providers and analyses them using MapReduce.
Chukwa inherits Hadoop's scalability and robustness. Chukwa has mainly
four components: Relies on data agents. Collectors collect data and
gives it to stable storage. This data is parsed and archived using
MapReduce jobs. It provides interface to analyse and display
results [@hid-sp-421-ChukwaComponents].

Apache Whirr
============

Apache Whirr provides collection of libraries for running cloud services
in a neutral way. Whirr began as a set of shell scripts for running
Hadoop on Amazon EC2, and later matured to include a Java API based on
the Apache jclouds project.

It defines the layout of clusters, It also has scripts to run operations
to start, stop and terminate new clusters [@hid-sp18-421-whirrCloud].

Apache Zookeeper
================

Zookeeper is a open source centralized service that enables
synchronization across cluster. It is also designed to maintain naming,
configuration information, and provide group services.

An application can create znode in Zookeeper which can be updated by any
node in the cluster and updates on that node can have track of changes
to that znode. This kind of znodes are used to keep track of updates in
the entire cluster which is how it provides centralized
infrastructure [@hid-sp18-421-zookeeper].

Apache BigTop
=============

BigTop [@hid-sp18-421-BigTopCloud] is Apache Foundation project for
comprehensive packaging, testing and configuration of bigdata
components. It supports Hadoop eco system. It packages RPMs and DEBs so
that we can manage and maintain Hadoop Cluster. It provides an
integrated smoke testing framework. BigTop provides vagrant recipes, raw
images and docker recipes to deploy Hadoop from zero.

CensOS Project
==============

The CensOS Project is a open source project that was developped over the
Red Hat Linux system, it is a well maintained open source projects with
very low cost for maintainence, which has more than 7 versions updated
and maintained. The CenOS Project focuses on developing robust open
source ecosystem to personal user, open source community, and companies
like Amazon, Google and so on. The CensOS Project provides the both
individual users and companies cloud image and powerful cloud developing
tools, which enables them to build their own cloud service upon the
services offer by the CensOS Project [@centOS].

The CenOS open source project creates the Linux bas distribution cloud
system. There are many open source development teams that were grouped
by the specific interests. Not only the CensOS itself provides complete
documentation of development environment, many development community
also provide documentations about their project. Because of the growth
of the development community is expanding, the functionality of the
CensOS Project will be more advanced in the future.

CloudTrail
==========

The AWS CloudTrail [@hid-sp18-518-CloudTrail] service is an activity
recording service provided by Amazon Web Services. The service allows
you to track the history of account usage for your AWS instances. The
service is not on by default yet when configured, it will record all API
calls from all sources like the console, CLE, SDKs or CloudFormation.
The data is written into an S3 bucket via JSON and would include
attributes lik user, IP address, timestamp and the action the user took.

CloudWatch
==========

The AWS CloudWatch [@hid-sp18-518-CloudWatch] service is the monitoring
service provided by Amazon Web Services. Everything from metrics for
resource usage, billing usage, and up to including custom data can be
used to group elements into graphs. You can summarize across all
instances or you can configure dimensions to allow to focus on certain
aspects. Dimensions are a name/value pair that you can establish to
target (ex. ServiceName/awskms) yet only certain AWS services are
available for aggregation. You can stream the log data to an S3 bucket,
to a Lambda function or to Elastic Search. It can also be used to
collect logs from your Windows and Linux instances and if you develop an
API for your application, it can pull from there as well.

Cloudlet
========

A cloudlet is technique or mechanism by which the cloud capabilities and
its wonderful storage,data processing and data analysis power is brought
at the edge of the cellular network. The main idea behind cloudlet is to
bring the cloud and its services closer to the client (IOT devices,smart
phones, smart watches) which cannot independently complete the high load
of computation and would require offloadingto meet the computational
requirements. This offloading to the main cloud serverwould take
relatively longer time in cases where the action has to be taken as
soonas possible in real time. Thus in scenarios where latency must be
minimum and offloading becomes compulsory we would then be compelled to
use cloudlets, where the computation now happens at the edge of cellular
network and latency is reduced significantly.

> ``It is a new architectural element that extends today's cloud
> computing infrastructure. It represents the middle tier of a 3-tier
> hierarchy: mobile device - cloudlet -
> cloud.'' [@hid-sp18-410-wikiCloudlet]

Thus a cloudlet can be viewed as a mini data center whose aim is to
bring the cloud closer to the Non powerful devices.



> ``The cloudlet term was first coined by Satyanarayanan and a
> prototype implementation is developed by Carnegie Mellon University
> as a research project.The concept of cloudlet is also known as
> follow me cloud,and mobile
> micro-cloud'' [@hid-sp18-410-wikiCloudlet]

Cognito
=======

The AWS Cognito [@hid-sp18-518-Cognito] service is used to federate your
user registration and their ability to sign into your services. The
solution allows you to easily manage user pools and can integrate with
multiple SDKs like Java, Python, PHP and Ruby. The client application
can be configured to use SAML, OIDC or other backend user directory
services. The service is intended to be used in conjuction with AWS IAM
and STS.

CouchDB
=======

CouchDB[@hid-sp18-515-www-couchdb] is a database designed for web, which
use JSON as the file format to store data. You can use web browser to
get access to the documents via HTTP. You can use JavaScript to query,
combine, and transform your documents. CouchDB is suitable to work with
modern web and mobile apps. CouchDB's incremental replication helps you
distribute your data efficiently. You can setup the CouchDB as
master-master with automatic conflict detection. CouchDB makes web
development a breeze because its suite of features, such as on-the-fly
document transformation and real-time change notifications. It even
helps use web easily with the administration console, which is served
directly out of CouchDB. CouchDB is easy to be distributed scaling,
because it's highly available and partition tolerant, but is also
eventually consistent. CouchDB puts your data safely with the
fault-tolerant storage engine.

ELK Stack
=========

ELK is one of most powerful and scalable BigData solutions in the
current market and is indeed doing pretty good. It can solve many
challenging problems with respect to indexing, logging, searching,
troubleshooting, storage and reporting.

ELK acronyms three open source projects: Elasticsearch, Logstash, and
Kibana.

> ``Elasticsearch is a search and analytics engine. Logstash is a
> server-side data processing pipeline that ingests data from multiple
> sources simultaneously, transforms it, and then sends it to a stash
> like Elasticsearch. Kibana lets users visualize data with charts and
> graphs in Elasticsearch'' [@hid-sp18-410-ELKBlog].

ELK is one of the most
scalable solutions in field of reporting and indexing where Elastic
search is an indexing and database kind of service and Logstash works
more like a tool for logging everything feeding it to Elastic search for
indexing and storing in the database, while Kibana is a nice GUI that
helps in data visualization and also allows users to build their own
reporting requirements in the Kibana framwork which also provides
flexibility and scalability. Thus Elasticsearch, logstash and Kibana is
a wonderful open source that has collaborated solution for most of
problems dealing with BigData and cloud.

Edge Computing
==============

Edge computing is a network architecture concept where in the cloud
computing capabilities are carried out at the edge of cellular network
where the end device or requester is located.

The main idea behind edge computing is to reduce the network latency and
radio network resource consumption by bringing the cloud services closer
to the device so that latency is reduced significantly.

This mechanism requires leveraging or using resources that may not be
connected to a network with devices such as laptops, smartphones,
tablets and sensors.



> ``Edge computing covers a wide range of technologies including
> wireless sensor networks, mobile data acquisition, mobile signature
> analysis, cooperative distributed peer-to-peer ad hoc networking and
> processing also classifiable as local cloud/fog computing and
> grid/mesh computing, dew computing, mobile edge computing,cloudlet,
> distributed data storage and retrieval, autonomic self-healing
> networks, remote cloud services'' [@hid-sp18-410-edge]

Majority of its application are realized in IOT and other smart
connected ecosystem where emergency is the highest priority and data
processing is scarce.

Naive example would be a baby crossing a road and
an autonous vehicle running over the same road, needs to decide as soon
as possible to stop motion in order to save baby's life. It cannot send
the data to main cloud server and wait for response which would be time
consuming and baby's life would be at jeopardy. Hence edge computing
would be really useful and saviour for scenarios where offloading to
cloud is considered costly.

FoundationBenchmarks
====================

The AWS Foundation Benchmarks [@hid-sp18-518-FoundationBenchmarks]
project is a repository of Python scripts that can be used to evaluate
your AWS account and it's configuration. The project is intended to be
integrated into your CloudFormation stack so that it can run the
benchmarks on every iteration of your code pipeline. The benchmarks are
sourced from the Center of Internet Security and it can help you find
issues in your IAM, your VPC configuration, your S3 bucket permissions
and many other places that are commonly left open by default or
accident.

Google Cloud Platform - Big data solutions
==========================================

The Google Big data solutions is a part of Google Cloud Platform
services; it offers special service on data analyzes and other data
engineering works. The users (usually companies, sometime personal user)
could combine with the cloud services (see more in Google Cloud Platform
- Cloud Dataproc in another section) to manage their data, database, and
proceed data analyzing, machine learning and other related data
engineering works in order to predict business decision. The Big data
solutions offers all of the services about data management, efficient
data query, and machines intelligence services, which is invaluable for
commercial purpose [@GoogleCP_BDS].

The functionality of the Google Big data solution is comparably advanced
compare with other big data and cloud computing service; it has
completed managed platform with not sophisticated structure, which
support SQL and No-SQL data services. The Fast Queries of the Google Big
data solution is also an advantage, since it saves users time and lower
the cost of data searching [@GoogleCP_BDS].

Google Cloud Platform - Cloud Dataproc
======================================

The Cloud Dataproc is a part of Google Cloud Platform services. It is a
efficient, not sophisticated, and well managed cloud service for
companies who running Apache Spark and Apache Hadoop clusters as cloud
base. The companies can adopt their cloud system in to the Cloud
Dataproc, and use Google Cloud Platform services to manage data, mine
useful information from data and so on (see an example in Google Cloud
Platform - Big data solutions). It combines with other services in
Google Cloud Platform services to generates a complete cloud service for
dealing with large amount of data size [@GoogleCP_CD].

More than the companies can adopt their own system into the Cloud
Dataproc, which could be more suitable for the company to use, and also,
the Cloud Dataproc also has has many other development tools are
available to use, such as the Google Cloud SDK, some web UI, and RESTFUL
APIs. The richness of the development tools could lower a company cost
significantly [@GoogleCP_CD].

HBase
=====

Apache HBase[@hid-sp18-515-www-hbase]is a distributed, scalable, big
data store, Hadoop database. You can use Apache HBase when you need
random, realtime read/write access to your Big Data. The goal of HBase
is hosting of very large tables -- billions of rows X millions of
columns -- atop clusters of commodity hardware. Apache HBase is modeled
after Google's Bigtable, which is a Distributed Storage System for
Structured Data. HBase is an open source, non-relational distributed
database that mimics Google's Bigtable and is written in Java. It was
developed as part of the Apache Software Foundation's Apache Hadoop
project and runs on top of HDFS (Hadoop Distributed File System),
providing Hadoop with similar Bigtable functionality. HBase provides
compression, in-memory operations, and Bloom filters for each column
listed in the original Bigtable file. HBase does not directly replace
the traditional SQL database, but the Apache Phoenix project provides
SQL layers for HBase and JDBC drivers that can be integrated with a
variety of analytics and business intelligence applications.

HPCC Systems
============

HPCC (High Performance computer cluster) systems are open source tool
which offers the BigData related services. HPCC contains tools that deal
with complex data structure and large scale of data amount. It is a
powerful open source tool for data analyze, especially for the
significant size of data. The functionalities of HPCC such as fast
querying to different databases, , data visualization, and data
management have good reputation to many users [@HPCC].

One of the properties of the HPCC system is easy-to-used; it is easy to
learn from a developer side, and it also contains exhaustive resources
for a beginner to learn. For example, the HPCC has free training and
completed documentation for the new user, and even user has some
unexperienced issue which is hard to solve, the development community
can also help the user to learn. Despite it is easy to use, the powerful
computing mechanism of the system and the massive cloud computing
platform bring the HPCC system supercomputing capability [@HPCC].

Apache Hadoop
=============

The Apache Hadoop [@hid-sp18-515-www-hadoop] is an open-source software
designed for reliable, scalable, distributed computing. The Apache
Hadoop software library is a framework using simple programming models
that allows allows for the distributed processing of large data sets
across clusters of computers. It is designed to scale up from single
servers to thousands of machines, each offering local computation and
storage. The library is designed to detect and handle failures at the
application layer rather than rely on hardware to deliver
high-availability. Therefore, each of the computers in the cluster may
be prone to failures because it delivers a highly-available service on
top of a cluster of computers. The project includes these modules: 1.
Hadoop Common: The common utilities that support the other Hadoop
modules. 2. Hadoop Distributed File System (HDFS): A distributed file
system that provides high-throughput access to application data. 3.
Hadoop YARN: A framework for job scheduling and cluster resource
management. 4. Hadoop MapReduce: A YARN-based system for parallel
processing of large data sets.

Hyperledger Burrow
==================

Hyperledger Burrow [@hid-sp18-414-Behlendorf] is an open sourced
smart-contract interpreter which was built to meet the requirements of
the Ethereum Virtual Machine. The Ethereum network has begun to see
growth in the enterprise sector; with well-known companies such as JP
Morgan, Microsoft, Accenture and BP all recently joining the Enterprise
Ethereum Alliance.The importance around interpreting smart contracts
created by Ethereum cannot be understated, as Ethereum has gained a lot
of traction and credibility within the Cryptocurrency community and
currently at the time of writing has a market cap of 82 billion USD only
second to Bitcoin. Because of this widespread adoption of Ethereum, one
of Burrow's claims to fame is that it is the only Apache-licensed
Ethereum VM implementations on the
market. [@hid-sp18-414-Hyperledger_Burrow] [^1]

[^1]: citation wrongly placed

Hyperledger Fabric
==================

Hyperledger Fabric is one of the oldest and most well known of all the
Linux foundation Hyperledger projects. Initially created by IBM and
Digital Asset , it's intent was to be a foundation for developing
distributed ledger applications. Some of the key features sited by the
team are,Channels for sharing confidential information, Ordering Service
delivers transactions consistently to peers in the network, Endorsement
policies for transactions ,CouchDB world state supports wide range of
queries, Bring-your-own Membership Service
Provider(MSP). [@hid-sp18-414-Hyperledger_Fabric]

With many companies contributing to the growth of the platform, over 159
engineers from 28 different organizations, there is a promising future
for the platform as a variety of businesses begin to explore building
products with Fabric. As stated by Behlendorf the number of projects
already being built is in high hundreds to low
thousands. [@hid-sp18-414-Behlendorf_Interview]. As distributed ledger
technology continues to grow, the willingness for enterprises across
differing industry/sectors to contribute to this open source platform is
key to it's success.

Hyperledger Indy
================

Another one of the newer developments from Hyperledger, Hyperledger Indy
is all about providing independent digital identities across blockchains
and distributed ledgers. It is a decentralized identity system and its
advantage is that identity management is its sole focus. As Phillip J.
Windley, Ph.D., Chair, Sovrin Foundation states,

> ``Many have proposed distributed ledger technology as a solution,
> however building decentralized identity on top of distributed
> ledgers that were designed to support something else (cryptocurrency
> or smart contracts, for example) leads to compromises and
> short-cuts.'' [@hid-sp18-414-Windley]

This will allow people to securely, quickly and easily share their
authenticated identity with the groups and organizations of their
choosing while providing those organizations with the peace of mind of
knowing who they are dealing with.

As Behlendorf states,

> ``Instead of being an entry in a giant data base, you have your data
> and deal programmatically with different organizations who want to
> check your identity. And companies don't have to store so much
> personal data. They can store a pointer to the
> identity'' [@hid-sp18-414-Behlendor].



Hyperledger Iroha
=================

Hyperledger Iroha is an open source, mobile focused blockchain platform.
The Japanese startup, Soramitsu in partnership with Hitachi started the
initiative to create a mobile friendly blockchain architecture. As one
of the new, up and coming Hyperledger projects it focuses on being
simple and easy to include in projects and was implemented in C++ which
allows it to,

> ``perform well with any small data projects and focused use
> cases.'' [@hid-sp18-414-Behlendorf].



As stated by the Linux Foundation,

> ``Hyperledger Iroha is designed to be simple and easy to incorporate
> into infrastructural projects that require distributed ledger
> technology. It features a simple construction, modern, domain-driven
> C++ design, emphasis on mobile application development and a new,
> chain-based Byzantine Fault Tolerant consensus algorithm, called
> Sumeragi'' [@hid-sp18-414-Active_Status_Iroha].



Hyperledger Sawtooth
====================

Hyperledger Sawtooth is an open source, blockchain platform which can be
used to build distributed ledger applications. It's main application is
to simplify the development of blockchain applications by isolating the
core system from the application domain.

> ``This allows for developers to quickly and easily develop and
> deploy applications with custom tailored business rules in some of
> the more common languages'' [@hid-sp18-414-Hyperledger_Sawtooth].



Some of the core features that make Hyperledger Sawtooth a unique and
interesting distributed ledger technology:



> ``On-chain governance - Utilize smart contracts to vote on
> blockchain configuration settings such as the allowed participants
> and smart contracts. Advanced transaction execution engine - Process
> transactions in parallel to accelerate block creation and
> validation. Support for Ethereum - Run solidity smart contracts and
> integrate with Ethereum tooling. Dynamic consensus - Upgrade or swap
> the blockchain consensus protocol on the fly as your network grows,
> enabling the integration of more scalable algorithms as they are
> available. Broad language support - Program smart contracts in your
> preferred language, with support including Go, JavaScript, Python
> and more.'' [@hid-sp18-414-Linux_Foundation_Sawtooth]

IBM Big Replicate
=================

To make Hadoop deployment enterprise-class, easy data replication is
required to support critical business applications that depend on
Hadoop. Keeping this in mind, IBM created IBM Big Replicate which does
class replication for Hadoop and object store.

The main features of the product include continuous availability, high
performance with guaranteed data consistency. Also, it replicates large
amounts of data from lab to production environment, from production to
disaster recovery sites. These replications are governed by the business
rules set up. This technology replicates data as the data streams in.
Thus, it reduces dependency on completion of file operation i.e.,
closing of file before data can be transferred. It offers replication in
a flexible way by handling various Hadoop ditributions and verisons.
Additionally, for each cluster, multiple IBM Big Replicate can be
deployed as proxy servers to add resilience. Users can access Hadoop
Distributed File System using Big Replicate via the standard HDFS
URI[@hid-sp18-408-IBMBigReplicate].

IBM Db2 Big Sql :o:
===============

**citation labels do not have spaces**

IBM Db2 Big Sql fecilitates operations like accessing data, querying
data and analsying data across data warehouses and also Hadoop.

It is a well formed hybrid engine that lets you get data by querying
Hadoop using SQL. It gives you the flexibilty of having a single
database connection or make queries to different data sources such as


> ``HDFS, RDBMS, NoSql databases, object stores and
> WebHDFS.'' [@IBM; @DB2; @Bi; @Sql]

One of the most important feature
of this Big Sql is that it provides low latency.

This makes data retrival
easier in complex business systems. It also provides high performance,
security, SQL compatibility and federation capabilities to your data
warehouses.

It enables short, rapid queries that facilitates searching by key word
or key ranges. It uses HBase for operations such as point queries and
rapid insert. Workloads can be updated and deleted via this Hbase. To
make use of easier and faster data processing in Apache Spark, it can be
integrated with Spark[@hid-sp18-408-IBMDB2BigSql].

Intel Cloud Finder
==================

Intel Cloud finder is an enterprise level solution for choosing cloud
service provider. It helps the customers seeking help for cloud service
providers. It also provides a very good resource for people looking for
a very good performance with decent amount of security in the cloud.
They state that

> ``In the domain of Intel Cloud Technology we have Intel Advanced
> vector expansions, Intel Turbo boost technology and Intel Xeon
> processor but on the security side we have Intel trusted execution
> technology hardware-based protection for the cloud, ensuring a
> secure foundation and protecting applications against malware,
> malicious software, and other attacks'' [@hid-sp18-410-Intel]

looking forward to using this tool for selecting cloud services that
would satisfy personal cloud requirements.

Obviosly we need to wait
until Intel makes this tool open to public as this looks to be
proprietary tool.

Jelastic
========

Jelastic is a cloud service provider which combines platform as a
service and container as a service in a single package.

The main features include buitl-in metering, monitoring and
troubleshooting tools. It is available as a public, private, hybrid and
multi-cloud application. It can manage multi tenant Docker containerst
to native ecosystem. It facilitates live migration of workloads across
various regions and various clouds with zero downtime. This makes the
system highly reliable during migration. All the resources from
different cloud environment can be accessed using a single panel. It
also supports microservices and legacy application with absolutely no
code changes. It provides integration with Git, SVN and CI/CD tools and
services. It enables scripting to automate processes and events in the
cloud.

In terms of languages, it supports various languages such as Java, PHP,
Ruby, Node.js, Python, .NET and Go. Additionally, it supports
virtualization technologies like Docker and Virtuozzo. It also supports
a wide range of databases such as MySQL, MariaDB, Percona, PostgreSQL,
Redis, Neo4j, MongoDB, Cassandra, CouchDB and
OrientDB[@hid-sp18-408-JelasticWiki].

OpenNN
======



> ``OpenNN is an open source class library written in C++ programming
> language which implements neural networks, a main area of machine
> learning research. The main advantage of OpenNN is its high
> performance.  It is developed in C++ for better memory management
> and higher processing speed, and implements CPU parallelization. The
> library implements any number of layers of non-linear processing
> units for supervised learning. This deep architecture allows the
> design of neuralnetworks with universal approximation
> properties'' [@hid-sp18-520-OpenNN].



> ``Neural Designer has been developed from OpenNN, which is a
> advanced analytical tool and contains a graphical user interface
> which simplifies data entry and interpretation of
> results'' citehid-sp18-520-OpenNN.


> ``The class of neural network implemented in OpenNN is based on the
> multilayer perceptron. That model is extended here to contain
> scaling, unscaling, bounding, probabilistic and conditions
> layers'' [@hid-sp18-520-OpenNNn].


> ``OpenNN includes project files for Qt Creator. When working with
> another compiler is needed,a project for it must be
> created'' [@hid-sp18-520-OpenNNb].



Oracle Nosql Database
=====================

Oracle NoSQL Database[@hid-sp18-515-www-oraclenosql] is a scalable,
distributed NoSQL database, designed to provide highly reliable,
flexible and available data management across a configurable set of
storage nodes. Data in Oracle NoSQL Database can be modeled as both
relational-database-style tables, JSON documents or key-value pairs.
Based on the hashed value of the primary key, Oracle NoSQL Database is a
sharded s (shared-nothing) system which distributes the data uniformly
across the multiple shards in the cluster. Storage nodes are replicated
to ensure high availability, rapid failover in the event of a node
failure and optimal load balancing of queries within each shard. NoSQL
Database provides Java, C, Python and Node.js drivers and a REST API to
simplify application development. A wide variety of related Oracle and
open source applications are integrated in Oracle NoSQL Database, in
order to simplify and streamline the development and deployment of
modern big data applications. Oracle NoSQL Database is available in the
following editions: Enterprise Edition - Oracle Commercial License Basic
Edition \* - Oracle Database Enterprise Edition Commercial License
Community Edition - Open source license.

PostgreSQL
==========

PostgreSQL, often refered as Postgres [@hid-sp18-420-PostgreSQL_About],
is an open source, object-relational database management system.
PostgreSQL is free, extensible and supports cross platform feature. Its
source code is available with open source licence. Postgres was created
at UCB by a computer science professor named Michael
Stonebraker [@hid-sp18-420-PostgreSQL_History].

PostgreSQL runs on all major operating systems. Initially it was
designed to run on UNIX platforms. Now it works on 34 platforms of Linux
along with other platforms such as all Windows versions, Mac OS X and
Solaris. It supports text, images, sounds, video and includes
programming interfaces for different languages such as C, C++, Java,
Perl, Python, Ruby, Tcl and Open Database Connectivity.

PostgreSQL is completely ACID compliant and transactional. It has
complete support for different features such as foreign keys, joins,
views, triggers, and stored procedure [@hid-sp18-420-PostgreSQL_Wiki].
It includes almost all data types that are used in SQL, such as INTEGER,
NUMERIC, BOOLEAN, CHAR, VARCHAR, DATE, INTERVAL, and TIMESTAMP data
type. It also supports storage of binary large objects, including
pictures, sounds, or video [@hid-sp18-420-PostgreSQL_About].

PyTorch
=======



> ``PyTorch is a open source python package that has high level
> features of Tensor computation with strong GPU acceleration and Deep
> Neural Networks built on a tape-based autograd system''
>  [@hid-sp18-520-PyTorch].

PyTorch
has many packages and are used for deep learning, multi processing,
loading data. It is fast and has high computation speed when run with
any size of datasets. Out of many libraries of PyTorch,

> ``A PyTorch Tensor is conceptually identical to a numpy array: a
> Tensor is an n-dimensional array, and PyTorch provides many
> functions for operating on these Tensors. Like numpy arrays, PyTorch
> Tensors do not know anything about deep learning or computational
> graphs or gradients; they are a generic tool for scientific
> computing'' [@hid-sp18-520-PyTorchtensor].

PyTorch supports dynamic
computation graphs, where the computational graph can be created in real
run time.

> ``Respect to Grad, This is especially useful when you want to freeze
> part of your model, or you know in advance that you are not going to
> use gradients w.r.t. some parameters. If there is a single input to
> an operation that requires gradient, its output will also require
> gradient. Conversely, only if all inputs do not require gradient,
> the output also will not require it. Backward computation is never
> performed in the subgraphs, where all Variables did not require
> gradients'' [@hid-sp18-520-PyTorchgrad].



Qubole Data Service
===================

Qubole is a data services company who offers cloud services, data
management, and data system security to companies. The BigData Platform
in Qubole Data services contains all important elements for companies to
process their data, and it is not hard to use. Multiple cloud providers
can be chose, the company could select the cloud provider for their own
commercial purpose (the most of the cloud providers in Qubole Data
Service are open source) [@QDS].

The data analyze performance of the Qubole is the most competitive
strength. In the Qubole, a company could uses the large scale cloud data
platform, machine learning application, and other powerful tools to do
data mining and analyzing. Even though the most of servers were cloud
based, the claim from the Qubole is the security of the data and the
system is guaranteed. Furthermore, the Qubole also provides different
services (solutions) for different working type, different types of work
could be done by different solutions, in order to match the biggest
profit [@QDS].

RabbitMQ
========

RabbitMQ technology is open source message broker, which supports
multiple messaging protocols. It has many features such as asynchronous
messaging, which supports message queuing, receive and deliver
acknowledgments, routing any message queues with broadcasting to logs or
messages to multiple users.

> ``A RabbitMQ broker is a logical grouping of one or several Erlang
> nodes, each running the RabbitMQ application and sharing users,
> virtual hosts, queues, exchanges, bindings, and runtime
> parameters. Sometimes we refer to the collection of nodes as a
> cluster'' [@hid-sp18-520-RabbitMQCluster].



> ``RabbitMQ has pluggable support for various SASL authentication
> mechanisms. Among many, with PLAIN authentication, its enabled by
> default in the RabbitMQ server and
> clients'' [@hid-sp18-520-RabbitMQauth].



> ``It was originally implemented Advance Message Queuing Protocoland
> has been extended to support Streaming Text Oriented Messaging
> Protocol and other protocols'' [@hid-sp18-520-RabbitMQwiki].



> ``The rabbitmq-management plugin provides an HTTP-based API for
> management and monitoring of your RabbitMQ server, along with a
> browser-based UI and a command line tool,
> rabbitmqadmin'' [@hid-sp18-520-RabbitMQmana].



Ranger
======

Apache Ranger[@hid-sp18-515-www-ranger] is a framework to enable,
monitor and manage comprehensive data security across the Hadoop
platform. In order to provide comprehensive security across the Apapche
Hadoop ecosystem, the vision with Ranger was designed. The Hadoop
platform can now support a true data lake architecture with the advent
of Apache YARN. In a multitenant environment, Enterprises can
potentially run multiple workloads. Data security within Hadoop needs to
evolve to support multiple use cases for data access, while also
providing a framework for central administration of security policies
and monitoring of user access. Please read the FAQs if you need to
understand how it works over Apache Hadoop components. The followings
are goals of Apache Ranger: 1. Using a central UI or using REST APIs to
centralize security administration to manage all security related tasks.
2. Use Hadoop components/tools to perform fine-grained authorization of
specific operations and/or operations and manage them through central
management tools. 3. Make sure that all Hadoop components authorization
method are standardized. 4. Enhanced support for different authorization
methods, such as role-based access control, attribute-based access
control, etc. 5. Centrally audit user access and management operations
(security-related) in all Hadoop components.

Redis
=====



> ``Redis is an open source (BSD licensed), in-memory data structure
> store, used as a database, cache and message broker. It supports
> data structures such as strings, hashes, lists, sets, sorted sets
> with range queries, bitmaps, hyperloglogs and geospatial indexes
> with radius queries. Redis has built-in replication, Lua scripting,
> LRU eviction, transactions and different levels of on-disk
> persistence, and provides high availability via Redis Sentinel and
> automatic partitioning with Redis Cluster. It can run atomic
> operations on these types, like appending to a string, incrementing
> the value in a hash; pushing an element to a list; computing set
> intersection, union and difference, or getting the member with
> highest ranking in a sorted set. In order to achieve its outstanding
> performance, Redis works with an in-memory dataset. Depending on
> your use case, you can persist it either by dumping the dataset to
> disk every once in a while, or by appending each command to a
> log. Redis also supports trivial-to-setup master-slave asynchronous
> replication, with very fast non-blocking first synchronization,
> auto-reconnection with partial resynchronization on net
> split'' [@hid-sp18-520-Redis].

Redis is No SQL database, supports Key
value databases by mapping its key to type of values.

TensorFlow
==========


> ``TensorFlow is an open source software library for numerical
> computation using data flow graphs. Nodes in the graph represent
> mathematical operations, while the graph edges represent the
> multidimensional data arrays (tensors) communicated between
> them. The flexible architecture allows you to deploy computation to
> one or more CPUs or GPUs in a desktop, server, or mobile device with
> a single API. TensorFlow was originally developed by researchers and
> engineers working on the Google Brain Team within Google Machine
> Intelligence research organization for the purposes of conducting
> machine learning and deep neural networks research, but the system
> is general enough to be applicable in a wide variety of other
> domains as well'' [@hid-sp18-520-TensorFlow].

TensorFlow provides a platform for implementing and execute machine
learning algorithms and is highly popular with deep neural network
models and algorithms. TensorFlow is cross-platform, it can support
mobile and embedded platforms. It has lot of API to support complex
computations and algorithms.

Teradata Intellibase
====================

Teradata Intellibase provides a compact environment to perform data
warehousing, data exploration in an iterative way and advanced analytics
using the stored data. Storage of data come at a low cost in
Intellibase.

The platform enables a combination of Teradata and Hadoop nodes to make
up for the varied workload requirements. It does this by installing
everything into a single cabinet to preserve the floor space in the data
center.

The features include Teradata Database, Hadoop, Terdata Aster Analytics
and Teradata Unified Data Architecture. With these features, it enables
application deployment in a single cabinet. It also provides advanced
in-memory computing and also provides data protection for all the data
sources. The hardware could be re-deployed elsewhere thereby reducing
infrastructure costs. Additionally, it also provides software re-imaging
for quick replication.

The technology specifications include 18 nodes, 375 TB of uncompresed
data from user and 18TB of memory in a single cabinet. The processors
are dual multi-core Intel Xeon
Processors[@hid-sp18-408-TeradataIntellibase].

Teradata Kylo
=============

Kylo is a data lake management software management platform. It is open
source and provides features like data ingestion with data clensing and
validation, metadata management, governance and security.

It can connect to many data sources and infer the schema from the common
available data formats. Kylo's data inegestion workflow transfers data
from source to Hive tables with various configuration options which are
built around validation of data fields, protection of data, data
profiling, data security and overall governance.

Kylo includes a metadata repository and provides key capabilities for
data exploration. Using this feature, users can search in data and
metadata to explore their entities of interest to gain insights.

By utilizing Kylo's capabilities, designers can develop new pipeline
templates in Apache Nifi. Kylo and Nifi can communicate between each
other to handle tasks between the cluster and the data center. The
combination of Kylo and Nifi enables data owners to create new data
feeds[@hid-sp18-408-TeradataKylo].

The GO Programming Language
===========================

Go is an open source programming language developed by team of Google
Robert Griesemer, Rob Pike and Ken Thompson. Its easy to build simple,
robust and efficient software. Go is clean and concise which directly
compiles to machine code and has very efficeient garbage collection
mechanism.

It has been built to support concurrency mechanism for multiple
proccesses to run inside a core efficiently. GOROUTINES, SELECT and
CHANNELS are some primitive types like String in Java which are built
around concurrent programming to solve complex problems.

Go is a cross platform and portable language which avoids several object
oriented features like classes and inheritence which might not be
suitable for multi-core processing and parallel computing.

Due to advent of big data technologies and cloud computing there had
been a need of modern programming language which could address the
efficiency and scalability requirements for these platforms. Go works
really well in modern computing environment due to its really powerful
and efficient dependency managment built inside it which differentiates
it from other languages like Java and C++.

Key features of GO Language are:

-   Ease of construction

-   High efficiency in working on large programs

-   Many proggmers can work on a code

-   Concurrency

-   Dependency management

 [@hid-sp18-522-golanguage]

AlibabaCloud
============

Alibaba Cloud is a tech giant which provides cloud computing services to
support both international customers and their own internal business
partners who are using Alibaba Group's e-commerce ecosystem.

The service provided by Alibaba Cloud are efficient as they include
high-performance and great computing power in the cloud system. Every
service offered by them are available as pay-as-you-go along with
Anti-DDoS protection and also includes the luxury of Content Delivery
Networkss (CDN). On the other hand, Alibaba Cloud is doing a great
impact towards research and development of large database systems and
advanced big data technologies. Alibaba Cloud's research and development
includes Internet of Things technology, virtual reality, smart homes,
networking and also cloud-based mobile-device operating
systems [@hid-sp18-406-AlibabaCloud].

Alluxio
=======

Alluxio is open source project under Apache License 2.0. [@alluxio]
Applications only has to connect with Alluxio to access data stored in
any underlying storage systems.Alluxio is Hadoop compatible.In the big
data ecosystem, Alluxio [@alluxio] lies between computation frameworks
or jobs, such as Apache Spark and various kinds of storage systems, such
as Amazon S3.It provides fault-tolerance and effective data management
across different storage systems through the mount feature.in also has a
web-UI for browsing file systems.Alluxio [@alluxio] connects the gap
between big data applications and traditional storage systems , and
expands the set of workloads available to utilize the data.

Amazon Aurora
=============

Amazon's Aurora is a relational database that is compatible with MySQL
and PostgreSQL that puts together performance and availability of
databases with the power,

> ``simplicity and cost-effectiveness of open source
> databases'' [@hid-sp18-512-amazon-aurora].

Compared to standard
MySQL databases, Aurora provides speeds that are up to five times that
higher. It's performance is increased by utilizing an SSD-based storage
that helps reduce delays and workloads to the system. It is also
designed to reduce Input/Output operations and costs so that resources
can be available.

Amazon CloudFront
=================

A Content Delivery Network is a *globally distributed network of
webservers* [@hid-sp18-512-amazon-cloudfront-b] over the internet at
different geographical locations. They form a huge part of internet
services today and are deployed at different locations to ensure faster
content load times, and lower bandwidths over a network. This technology
is highly

> ``useful to companies that require higher response
> times'' [@hid-sp18-512-amazon-cloudfront-b] and distribution of
> large files to many users at a given time.

It helps accelerate delivery by
moving the content close to the end-user therefore reducing hops through
the internet. This is often done through caching the content inside a
server that is closer to the user. With this, network performance is
accelerated, including global presence, and smart computing. Amazon
CloudFront is a Content Delivery Network (CDN) that is integrated in
Amazons AWS service. It is one of the largest in the world, including
others such as Akamai, MaxCDN, and Rackspace. CloudFront is continuing
to grow globally and currently

> ``includes 44 availability zones in 16 different geographic regions
> today''[@hid-sp18-512-amazon-cloudfront-a].


This also includes plans for constructing 14 other zones in the coming
future.

Amazon DynamoDB
===============

NoSQL refers to a non-relational database the provides high performance
and using various data models such as document, key-value, graph, and
columnar. Compared to Non-relational databases, the do not often enforce
the use of a schema. DynamoDB is type of NoSQL database provided by
Amazon. It is a cloud based database that is full managed and capable of
supporting both key-value and document based models. It
comes [@hid-sp18-512-amazon-dynamodb] with a very flexible model and
through-put capacity that makes it great for various devices and
applications such as those suitable for gaming, IoT et cetera. With
DynamoDB [@hid-sp18-512-amazon-dynamodb_faq], customers don't have to
worry about the burdens of operating distributed services such as
hardware setup, configurations and software patches.

Amazon VPC
==========

A VPC is part of the AWS infrastructure that is logically isolated and
spans a whole entire region of AWS to which the instances were created.


> ``It is one of the most used and famous services inside the Amazon Web
> Services suite'' [@hid-sp18-512-amazon-vpc-a].

It provides the
possibility of assigning specific IP addresses, subnets, and network
rules when establishing communication with other resources within and
out of the infrastructure. This way, the traffic between instances of
the elastic cloud compute is protected against network intrusion. This
service makes it possible to separate public networks from private
providing business enterprises the power to decide which instances can
be exposed to the outside word and which cannot. VPC's include six major
components that are part of the default VPC. These include gateways,
Route Tables, Security Groups, Network Access Lists, and the Classless
Inter-Domain Routing (CIDR) Blocks. These resources bring out the
simplicity, advanced security, and all the scalability and reliability
of AWS [@hid-sp18-512-amazon-vpc]

Amazon EC2
==========

Amazon Elastic Compute Cloud (Amazon EC2) [@www-amazonec2]is a web
service provided by Amazon.com. It is a system that allows users to rent
cloud computers to run the required applications. It can provide secure
service in the cloud, users will be able to run any software or
application they want on this virtual machine.

Amazon EC2 has lots of benefits. First, it is inexpensive, it only costs
a very low rate for the compute capacity. Second, it is easy to start.
It contains several ways to get started with Amazon EC2. Third, Amazon
EC2 provides a highly reliable environment.

> ``The service runs within Amazon's proven network infrastructure and
> data centers.'' [@www-amazonec2].

What's more, Amazon EC2 and Amazon VPC works
together to provide high security.

> ``Cloud security at AWS is the highest priority.'' [@www-amazonec2].



Amazon Elastic Beanstalk
========================

AWS Elastic Beanstalk [@hid-sp18-420-amazon-elastic-beanstalk] is a
managed service used for application deployment and management. Using
EBS it is easy to quickly deploy and manage applications in the AWS
Cloud. Developers simply upload their application, and Elastic Beanstalk
automatically handles the deployment details of capacity provisioning,
load balancing, auto-scaling, and application health
monitoring [@hid-sp18-420-amazon-elastic-beanstalk-FAQ].

Elastic Beanstalk supports applications which are developed in Java,
PHP, NET, Node.js, Python, and Ruby as well as different container types
for each language. A container is used to define the infrastructure and
technology stack to be used for a given
environment [@hid-sp18-420-amazon-elastic-beanstalk-FAQ]. AWS Elastic
Beanstalk runs on the Amazon Linux AMI and the Windows Server 2012 R2
AMI provided by Amazon. Initially, it takes some time to create AWS
resources required to run the application. User then can have multiple
versions of their applications running at the same time. Hence, user can
create different environments such as staging and production where each
environment runs with its own configurations and resources. AWS Elastic
Beanstalk does not have any extra charges. Users need to pay for the
resources they have used to store and run the applications such as EC2,
S3, RDS or any other resources used.

Amazon Machine Learning
=======================

AmazonML is a service for machine learning that makes it possible to
design and build applications that can be used for prediction,
forecasting et cetera. It employs algorithms that can help create models
that can be used to train and discern patterns from data. A trained
model can be used to determine trends that can be used to make
predictions when given new sets of data. The Amazon's Machine Learning
API

> ``provides data and model visualization tools, as well as wizards to
> guide you through the process of creating machine learning
> models,'' [@hid-sp18-512-amazonml-b].

It is a service that is highly
scalable and can be used to create large numbers of predictions in
real-time. The framework also supports Amazon Machine Images (AMI) that
provide the resources for faster development of sophisticated models.


> ``The AMI's are pre-installed with Apache MXNet, TensorFlow,
> PyTorch, the Microsoft Cognitive Toolkit (CNTK), Caffe, Theano,
> Torch, Gluon, and Keras to train sophisticated, custom AI
> models.'' [@hid-sp18-512-amazonml-a]

Ansible
=======

Ansible is a widely popular open-source tool used for automation of
configuration management, application deployment. Ansible is popular
because of its simplicity. Originally, Ansible Inc was setup to manage
the product. Later in 2015, RedHat acquired Ansible.

> ``It uses no agents and no additional custom security
> infrastructure, so it's easy to deploy and most importantly, it uses
> a very simple language (YAML, in the form of Ansible Playbooks) that
> allow you to describe your automation jobs in a way that approaches
> plain English'' [@hid-sp18-417-doc-Ansible].

An
user doesn't have to learn a cryptic language to use it. As no agents
are required to be installed in the nodes, the tool eases the network
overhead. Ansible may use two kinds of server for operation. One is the
controlling server that has Ansible installed. The controlling server
deploys modules in the nodes through SSH channel. The basic component of
Ansible archtecture are:

Modules:

:   This is the unit of work/task in Ansible. It can be written in any
    standard programming language

Inventory:

:   Inventory is basically the nodes used

Playbooks:

:   A play book in Ansible describes in simple language the
    infrastucture used for the deployment of the tool. This is written
    in YAML.

Apache Accumulo
===============

Based on Google's BigTable design, Apache has their own data store
called Accumulo[@hid-sp18-526-www-apache-accumulo]. Accumulo overlays
the Hadoop Distributed File System (HDFS) and Apache Zookeeper.
Originally created by the US National Security Agency, Accumulo has a
large focus on security and access control. Every key-value pair in
Accumulo has its own user restrictions. Accumulo is used mostly in other
open source projects and in other Apache projects such as Fluo, Gora,
Hive, Pig, and Rya.

Accumulo is a distributed storage system for data, which is simpler than
a typical key-value pair system. Each record in Accumulo has the
following properties: *Key*, *Value*, *Row ID*, *Column*, *Timestamp*,
*Family*, *Qualifier*, and *Visibility*. The records are stored across
many machines, with Accumolo keeping track of the properties. A monitor
is also provided for information on the current states of the system. A
garbage collector, tablet server (table partition manager), and tracer
(for timing) are also included as well as iterators for data management.

Apache Ambari
=============

Ambari is a software to manage Hadoop environment efficiently by
providing services like managing, monitoring and provisioning to the
hadoop clusters [@hid-sp18-401-wiki-Ambari].

When Apache Hadoop started developing with aim of increasing its
scalability, several application layers started to cover its
architecture like Pig, Hive, HBase etc. making the management of Hadoop
architecture bulky and unmanageable, and several problems were faced by
the developers in handling large hadoop clusters. Ambari is developed
aiming to be the solution to the above problems.

Apache architecture includes two main components - Ambari Server and
Ambari Agent. Ambari supports 64 bit OS like RHEL 5 (Redhat enterprise
Linux), RHEL 6, CentOS 5, CentOS 6 etc [@hid-sp18-401-Ambari]. Ambari
provided monitoring services through tools like Dashboard views - which
shows cluster health and cluster status, also by collecting different
metrics like Job status, Maps slots utilization, garbage collection.

Apache Ignite
=============

Apache Ignite is an in-memory distributed database, caching, and
processing platform for transactional, analytical, and streaming
workloads, delivering in-memory speeds at petabyte
scale [@hid-sp18-501-ApacheIgnite].

Unlike in-memory databases, Apache Ignite works on top of existing
databases and requires no rip-and-replace or any changes to an existing
RDBMS. Users can keep their existing RDBMSs in place and deploy Apache
Ignite as a layer above it. Apache Ignite can even automatically
integrate with different RDBMS systems, such as Oracle, MySQL, Postgres,
DB2, Microsoft SQL and others. This feature automatically generates the
application domain model based on the schema definition of the
underlying database and then loads the data. Moreover, IMDBs typically
only provide a SQL interface while Apache Ignite provides a much wider
ecosystem of supported access and processing paradigms in addition to
ANSI SQL. Apache Ignite supports key/value stores, SQL access,
MapReduce, HPC/MPP processing, streaming/CEP processing and Hadoop
acceleration, all in one well-integrated in-memory data
fabric [@hid-sp18-501-GridGain].

Apache Impala
=============

Apache Impala acts as analytic database for Apache Hadoop. Impala can be
used from many open source distributions like Cloudera, MapR, Oracle and
Amazon. Impala has Enterprise-Class security i.e it is integrated with
native hadoop security and Kerberos for
authentication [@hid-sp18-401-wiki-Impala].

Apache Impala is massively Parallel Processing SQL query engine that
works on data stored and run in Apache Hadoop clusters.

> ``It enables users to issue low- latency SQL queries to data stored
> in HDFS and Apache HBase without requiring data movement or
> transformation'' [@hid-sp18-401-apache-Impala].



Apache Phoenix
==============

Apache Phoenix[@hid-sp18-526-www-apache-phoenix] is an open-source
database engine by Apache that works in tandem with Hadoop and HBase.
Because it uses HBase, Phoenix is a noSQL store. The system supports
online transaction processing (OLTP). Using SQL and Java database
connectivity (JDBC), Phoenix allows for queries over millions of rows to
be executed in milliseconds. Phoenix overlays HBase and allows data to
be accessed directly via SQL queries (through JDBC). It allows for
indexing and parallelization to greatly reduce query time. Phoenix is
compatible with the host of Hadoop products such as Spark, Hive, and
MapReduce. Phoenix allows table modifications through DDL (Data
Definition Language) commands. These commands use simple SQL statements
to create or alter tables. Phoenix also uses ACID (Atomicity,
Consistency, Isolation, Durability) transactions.

In order to begin using Phoenix, you must first install java and
download the Phoenix jar file. Phoenix is currently used by many large
corporations such as eBay, Salesforce, and Bloomberg.

Apache CloudStack
=================

Apache CloudStack is an open source that provides a highly scalable and
available cloud management platform for IT Enterprises and service
providers. CloudStack was originally developed by Cloud.com and was
known by the name VMOps. In 2011, Citrix acquired the product and
donated it to Apache.

> ``CloudStack is being developed to help managed service providers
> and enterprise IT departments create and operate public cloud,
> private cloud or hybrid clouds with capabilities equivalent to
> Amazon's Elastic Compute Cloud (Amazon EC2) It uses existing
> hypervisors such as KVM, VMware ESXi\|VMware vcenter and
> XenServer/XCP for virtualization. In addition to its own API,
> CloudStack also supports the Amazon Web Services (AWS) API\[3\] and
> the Open Cloud Computing Interface from the Open Grid
> Forum.'' [@hid-sp18-417-wiki-cloudStack].

The key feature of the product
are (1) high availability of resources (2) network management (3)
provides GUI for ease of management (4) compatible with most of the
hypervisor/virtual monitor (5) it provides the snapshot management.
e.g. This feature is very useful is saving a state \[snapshot\] of a
vitual machine. The vm can later be reverted to the stored state. The
basic deployment of CloudStack just needs two machines: A server and a
hypervisor that is a monitoring system. The process can be over
simplified by configuring one machine to serve both the purpose. The
same simple system can easily be scaled to a zone or a pod.
Figure [\[F:cloudstack-scalabuility\]](#F:cloudstack-scalabuility){reference-type="ref"
reference="F:cloudstack-scalabuility"} depicts how the simplest
deployment infrastructure can be scaled to provide an advanced support
system.

![CloudStack
Scalability [@hid-sp18-417-cloudstack-scaling][]{label="F:cloudstack-scalabuility"}](images/hid-sp18-417-cloudstack.png){width="\textwidth"}

Apache Couch DB
===============

Apache Couch DB is a NoSQL database which uses document instead of
tables to store the data. It simplifies the interaction with application
as data can be fetched or stored in form of JSON
objects [@hid-sp18-502-ApacheCouchDB]. The main advantage of using
CouchDB is that it is compatible with variety of application. It can be
used to integrate data from web-based applications, mobile applications,
web browsers to distributed server clusters. It makes transfer between
all these components happen smoothly while providing high performance
and totally reliable framework. It also supports Map-reduce
operations [@hid-sp18-502-ApacheCouchDB].

Apache Curator
==============

Apache Curator framework initially developed by NetFlix. In July 2007
this framework has been open sourced to GitHub.

Apache Curator is a collection of Java based client libraries for Apache
Zookeeper, a centralized distributed
service [@hid-sp18-514-apachecurator]

It includes a high level API framework and utilities to make using
Apache Zookeeper much easier and more reliable.It also includes recipes
for common use cases and extensions such as service discovery and a Java
8 asynchronous DSL [@hid-sp18-514-apachecurator].

The Curator framework consists of set of API's that prominently
streamline using Zookeeper. This framework adds various features that
build on Zookeeper and handles the complexity of managing connections to
the Zookeeper cluster in the distributed environment and retry
operations. The benefits of curator framework are: Automatic
connectionmanagement, Cleaner API, Recipe
implementations [@hid-sp18-514-apachecuratorfeatures].

The Apache curator RPC Proxy gives an access to non Java Virtual Machine
languages or environments. Organizations can can unify the ZooKeeper
usage across the environmets.

Nirmata workflow is a Apache ZooKeeper service and Apache Curator based
library that enables disributed task workflows in the enterprise
environments.This service can model simpe to complex relationships,
mange tasks relationships and distributed job scheduling, it is a simple
API, supports run time cluster changes with out service interruption. By
default it supports high availability and disater recovery and no signle
point of failure in the enterprise [@hid-sp18-514-nirmataCurator]

Apache Delta Cloud
==================

Apache DeltaCloud was developed in collaboration between Apache
Foundation and Redhat to provide a programming application that will
facilitate management of different cloud interfaces and It was
supporting all the major cloud interfaces.

> ``Each Infrastructure-as-a-Service cloud existing today\[when?\]
> provides its own API. The purpose of Deltacloud is to provide one
> unified REST-based API that can be used to manage services on any
> cloud. Each particular cloud is controlled through an adapter called
> a *driver*. As of June 2012, drivers exist for the following cloud
> platforms: Amazon EC2, Fujitsu Global Cloud Platform, GoGrid,
> OpenNebula, Rackspace, RHEV-M, RimuHosting, Terremark and VMware
> vCloud'' [@hid-sp18-417-wiki-deltacloud].



In 2009, DeltaCloud was developed for the purpose of providing one
unified API for the major cloud service.

In 2011, it became a part of the Apache's top level project.

Unfortunately, in 2015 the project was closed due to inactivity. The
application though inactive is chosen for the study to understand the
case behind the termination of the project. It is primarily because of
lack of popularity RedHat withdrew the sponsorship ultimately resulting
in the termination of the project.

Apache Drill
============

Apache Drill is an open-source framework for distributing computing on
applications handling data-intensive analysis. It is the open-source
parallel to Google Dremel for querying very large datasets. Drill is an
Apache Top-Level [@hid-sp18-404-BlogsApache2014] project which enables
queries to process on many servers at once over multiple datastores.
Drill supports many database systems including MongoDB, Amazon S3, Azure
Blob Storage, and Google Cloud Storage [@hid-sp18-404-Drill2015] and
storage file formats including Parquet, JSON, CSV, and TSV in
MapR-XD [@hid-sp18-404-Drill2017].

Apache Geode
============

Apache Geode is an in-memory distributed data management platform that
provides real-time, consistent access to data-intensive application
through extensively distributed cloud architectures and supports high
availability and disaster recovery in case of any node failures
 [@hid-sp18-514-apachegeodewiki]. Apache Geode initially developed by
GemStone Systems and later this framework has been renamed as GemFire.

Gemfire was first installed in the financial sector as the
transactional, low-latency data engine used in Wall Street
tradingplatforms [@hid-sp18-514-apachegeodewiki]. Distributed cache
servers are generalization that define the nodes. In each cache we
define regions, regions are equivalent to tables in any relational
databases or XSD schema structure and manage data in the distributed
environment. For high availability the data is replicated to multiple
regions (same data is available on each cache servers) by which it
ensures high availability as one member goes down still copy is
available on other cache member. Locater's responsibility to determine
and load balance client (MapReduce, JTA, spring, REST service call, or
API) requests to be processed by available cache servers. Locators get
notifications continuously if there is any issue in the cluster members,
based on this the client request will be navigated
appropriately [@hid-sp18-514-apachegeodewiki]. The main features of this
framework are high performance, scalability, fault-tolerance for any
data grid platform and can be integrated to other open sources
technologies - Spring Data Gemfire [@hid-sp18-514-geodespringgemfire],
Spring Cache [@hid-sp18-514-geodespringcache], and
Python [@hid-sp18-514-geodepython].

Apache Karaf
============

Apache Karaf is a lightweight enterprise application container. This
container can be used as a standalone server. It also supports the run
anywhere, It requires java to run. It also runs in cloud and Docker
images  [@hid-sp18-514-apachekaraf].

Apache karaf can be used in any enterprise application development and
deployment. It provides similar capabilites of other commercial
application servers IBM WebSpere, Oralce Weblogic provides. Capabilies
like transactional, log, messages, and web. The disadvantage of using
this container as an enterprise server are, there won't be support
provided in case of any issues in the environment where as support will
be provided for commercial servers like IBM WebSphere and Oracle
Weblogic.

As this a light weight container, open source, and provides other
features like transaction management [@karaf_transaction], logging,
security configurations, enterprise application deployment, console
access, remote access, and dynamic configuration changes. With this
flexibility, Karaf is the perfect solution for microservices, systems
integration, big data, and much more [@hid-sp18-514-apachekaraf]. In
order to run the Karaf, it requires Java Standard Edition 8 or later.
For more details on setup, configuration, deployment and download,
please refer index.

Apache Kylin
============

Apache Kylin is an Distributed Analytics Engine which has the capability
to query massive SQL data at sub-second speed. It is an Big Data
approach to multi-dimensional analysis (OLAP) on Hadoop/Spark. The
platfrom has the capability to interface with applications using
ODBC/JDBC or Restful API's. The OLAP Cube technology that uses HBase for
storage enable the query engine to achieve high speed data quering on
tables that contain 10+ billion records.

Apache Mahout
=============

Apache Mahout is commericial platform built for scalable implementation
of machine learning algorithms. It has support for Apache Spark
implementation. The platform built primarily for distributed analytics
provides functionalities for clustering, classification, collaborative
fileteric etc. It provides a linear algebra framework that lets users
implement their own algorithm for data analytics. The platform though
available commercially is still in its development
stage.[@hid-sp18-411-apachemahout].

Apache Mesos
============

Apache Mesos is the distributed systems kernel built similarly to the
Linux kernel, but runs on a different level [@hid-sp18-404-Apache2018].
Apache Mesos performs container and support and massively scalable data
support by splitting scheduling into a two-level architecture.
Applications running on Mesos are containerized separately from the
framework handling infrastructure scheduling
operations [@hid-sp18-404-Mesos2018].

Apatar
======

Apatar [@hid-sp18-402-www-apatar] is a data integration tool which
provides the capability to work with data across different systems and
helps to move data between those systems. It also provides ETL
capability for the data extraction and transformation. Application point
of view it can be used in data warehousing, data migration,
synchronization and integration between applications. It can be used
across heterogeneous systems like databases, files, FTP, Queue, and
applications like ERP, CRM. Since it is an open source tool developed in
Java, it provides platform independence and can be used on any operating
system. It provides flexible deployment options as desktop, server or
embedded into a 3rd party software. The desktop deployment comes with a
GUI client installation along with command line support on the local
machine. Server deployment allows Apatar to be deployed as server engine
over the network. The embedded option allows other software providers to
embed Apatar into their software to provide data integration
capabilities. Apatar has GUI for mapping and design which can be used by
technical as well as the non-technical person. Apatar is based on
modular open application architecture which allows customization and
flexibility to modify the source code for customized business logic or
integration with new systems. As per the Apatar website, it currently
supports connectivity and works with Oracle, MS SQL, MySQL, Sybase, DB2,
MS Access, PostgreSQL, XML, InstantDB, Paradox, BorlandJDataStore, CSV,
MS Excel, Qed, HSQL, Compiere ERP, SalesForce.Com, SugarCRM, Goldmine,
any JDBC data sources and more. Apatar also has data quality tool which
helps with the data cleansing. It provides support to multiple languages
as it is Unicode compliant. The Apatar architecture consists of 3 major
component as presentation/GUI, ETL, and data source. GUI is used to
perform various data integration task like data mapping, data source
configuration etc in a user-friendly way. Data source provides various
connectors to connect with different data sources like databases, files,
application (SAP, Siebel, etc), real-time feeds like queuing services.
Extract, Transformation and Load (ETL) component provides functionality
like data transformation, real-time in-memory data processing, data
cleansing and validation, data exception/rejection management, data
loading, post data load processing like archival, indexing, aggregation
and scheduling and event management.

AppFog
======

AppFog which acts as platform-as-a-Service (Paas) is developed on the
basis of the Cloud Foundry by Century Link. It empowers developers to
center on writing advanced cloud-based applications without having to
stress around overseeing the basic foundation. The end result is
expanded deftness and efficiency, more proficient use of resources and
low operational overhead [@hid-sp18-412-century_link_appfog].

Rather than investing time on provisioning servers, setting up
databases, designing web servers or updating firewalls. AppFog clients
essentially convey their cloud-native applications in an extremely
quick, tough, multi-environment PaaS. AppFog underpins the most
prevalent runtimes and Systems, simplified application scaling, self
load-balancing and many other functionalities. Additionally, with the
advantage of platform-as-a-Service, it guarantees tremendous use cases
to engineers who require less time to release in order to get all the
ends fulfilled with today's strict deadline showcase
requests [@hid-sp18-412-century_link_appfog].

The portability is enabled by the AppFog by providing the compatibility
at the core level. The applications that are offered by other cloud
foundry providers can be migrated and incorporated in the same
environment. The third party services such as the database, notification
services and the key value store services can be integrated into the
existing application using the *Cloud Foundry's User Provided Service
Capability* [@hid-sp18-412-century_link_appfog].

Appscale
========

Appscale developed with the objective of releasing, sending and scaling
the Google App Engine applications over the public and private systems
of the cloud, provides the scalable open-source cloud computing. In
addition, appscale also provides the clusters on the same environment
and comprehensive bolster for programming languages such as Go, Java,
PHP, and Python applications. This is enabled with the effective
modeling of the AppScale with the App Engine
APIs [@hid-sp18-412-wiki_appscale].

To enable running applications on any cloud infrastructure Appscale
provides the API-based development environment and quick responsive
functionalities to the designers. The application rationale and the
service system are decoupled from each other in order to effectively
control the application release, data storage, resource utilization,
backup and migration [@hid-sp18-412-wiki_appscale].

Appscale provides a simplified serverless platform for the wide variety
of the web and mobile applications. The enterprises that use this
platform will achieve the goals to quickly manage the time, cut out the
functional costs, improve application stability, and the compatibility
to combine the existing platform with the other novel
technologies [@hid-sp18-412-git_appscale].

Apttus
======

Apttus provide various products for Customer Relationship Management
(CRM) and use artificial intelligence (AI) to maximize the customer
revenue. These product help customer to automate the process and
maximize the revenue with artificial intelligence (AI) technology.
Apttus product include Enterprise Contract Management, Quote-to-Cash,
Configure Price Quote, Business to Business (B2B) E-Commerce, Buy-Side
Contract Management and Revenue Management. These are the industry
standard process and Apttus help to automate these process by using
artificial intelligence. Apttus Quote-to-Cash artificial intelligent
product used for automating the end to end process of customer's intent
to buy the product and ultimately customer buying the product. The
Quote-to-cash process start with the buyer's intention to buy the
product and ends with the cash in the bank of your organization.
Quote-to-Cash artificial intelligent product take care of all the steps
involved in the Quote-to-cash process and provide full automation of
customer relationship life cycle. These steps requires very less human
intervention. This product help in increasing the revenue of the
customer as Quote-to-Cash is heart of the business. Apttus provide both
on premise and cloud products [@hid-sp18-511-apttus].

ArangoDB
========

ArangoDB is a NoSQL database system used to support multiple data models
against a single backend engine. ArangoDB supports three main models
which are key-value pair, document and graph. Compared to MongoDB, which
is a document oriented database, ArangoDB has added benefits such as
scalability, lower operation costs, supporting JOINs and complex
transactions [@hid-sp18-416-www-arangodb]. ArangoDB used its' own query
language AQL, which is similar to SQL, but has the benefit of querying a
schema free database [@hid-sp18-416-www-aql-blog]. ArangoDB provides
flexibility in terms of querying the data because AQL can be used to
query across all supported data models. This ease of use in ArangoDB
allows developers to represent the components of their systems by models
that are much more suitable. This is the reason for the gain in
popularity for native multi-model databases such as ArangoDB
[@hid-sp18-416-www-graphdb-blog].

Amazon Athena
=============

Amazon Athena [@hid-sp18-521-athena-faq] is a service from AWS that
allows the user to analyze their data stored on Amazon S3 using SQL
code. It was created with the purpose of allowing anyone with SQL skills
to quickly analyze large datasets. Athena will allow a user to run on
demand SQL queries without the need to load or gather the data outside
of S3 and can process structured, semi-structured and unstructured data
sets. It it serverless so there is no need to deal with the setup or
managing of infrastructure. This also allows Athena to scale
automatically in order to be able to handle large datasets and complex
queries. Athena utilizes Presto which is an open source SQL query engine
designed to query data wherever it is stored. You can access Athena in
multiple ways including the AWS Management Console, API or JDBC driver.
It also integrates into Amazon Quicksight allowing you to visualize the
data stored in your S3 environment based on your Athena queries. Athena
is great for fast on demand querying, but can be used for complex joins,
window functions and arrays as well.

AtomSphere
==========

Boomi AtomSphere is basically an integration platform that supports all
application integration processes between cloud platforms, SaaS and
local systems as well. Boomi AtomSphere allows its customers to design
cloud based processes called Atoms, which defines the necessities for
the integration. It can dedicate

> ``separate environments for testing, perform parallel processing,
> message based queuing is a part of its service'' and it also allows
> its run time engines to cluster [@hid-sp18-418-AtomSphere-features].



AWS CodeStar
============

AWS CodeStar is a developer tool used to develop projects and easily
deploy on AWS cloud. It includes all of the tools and services needed
for a project development. It supports various templates to set up
projects using AWS Lambda, Amazon EC2, or AWS Elastic Beanstalk and IDE
platforms such as AWS Cloud9 Eclipse,Visual Studio, CLT.It comes
pre-configured with a project management dashboard, an automated
continuous delivery pipeline.

Additionally, AWS CodeStar integrates with Atlassian JIRA Software to
provide project management and issue tracking system for software
project team directly from the AWS CodeStar
console[@hid-sp18-602-www-awscodestar-blog].

Azure Blob Storage
==================

Microsoft Azure BLOB storage service can be used to store and retrieve
Binary Large Objects (BLOBs), or what are more commonly known as
files [@hid-sp18-501-RedGate]

This service can be used to share files with clients and to off-load
some of the static content from web servers to reduce the load on them.
Azure BLOB storage also provides persistent storage. By using this
service, developers get dedicated virtual machines to run code without
having to worry about managing those virtual machines. Azure BLOB
Storage can store any type of file, such as Image files, database files,
text files, or virtual hard drive files. However, when they are uploaded
to the service they are stored as either a Page BLOB or a Block BLOB
depending on how one plans on using the file or the size of the file.
Page BLOBs are optimized for random reads and writes so they are most
commonly used when storing virtual hard drive files for virtual
machines. Each Page BLOB is made up of one or more 512-byte pages of
data, up to a total size limit of 1 TB per file. The majority of files
would benefit from being stored as Block BLOBs, which are written to the
storage account as a series of blocks and then committed into a single
file. One can create a large file by breaking it into blocks, which can
be uploaded concurrently and then then committed together into a single
file in one operation. This allows faster upload times and better
throughput. The client storage libraries manage this process by
uploading files of less than 64 MB in size in a single operation, and
uploading larger files across multiple operations by breaking down the
files and running the concurrent uploads. A Block BLOB has a maximum
size of 200 GB [@hid-sp18-501-RedGate]

Azure Cosmos DB
===============

Azure Cosmos DB is a globally-distributed data service that allows
elastically scaling throughput and storage across any number of
geographical regions while guaranteeing low latency, high availability
and consistency [@hid-sp18-501-CosmosDB]. It can support multiple data
models using one backend. This means that it can be used for document,
key value, relational, and graph models. It is more or less a NoSQL
database because it does not rely on any schemas. However, because it
uses query language similar to SQL and can easily support ACID
transactions, some people have been classifying it as a NewSQL type of
database. What differentiates it from other NewSQL databases, however,
is that it does not have a relational data
model [@hid-sp18-501-Stackify]

Azure
=====

Azure can support different kinds of operatring systems and programming
language, which is cloud services that developers can used to get their
apps to maket faster. And Azure can be trusted, which is secure, private
and recoginized as the most trusted cloud [@www-azure]. Compared to AWS,
Azure is the better choice all over the world as the most trusted
cloud [@www-azure-opensource].

Besides, lots of choices can pick in the cloud with Azure.

> ``Get support for infrastructure as a service (IaaS) on Linux, Java,
> and PHP Web application platforms. Develop and test your Linux and
> open source components in Azure. You bring the tools you love and
> skills you already have, and run virtually any application, using
> your data source, with your operating system, on your
> device [@www-azure-choices]''.



Backblaze
=========

Backblaze is a cloud backup service [@hid-sp18-601-www-bblaze-about],
providing solutions to business [@hid-sp18-601-www-bblaze-business] and
private users [@hid-sp18-601-www-bblaze-personal]. Backblaze plans do
not have a limit for the amount of data you can backup and the software
continuously uploads data present on your device.

If the backup is ever needed it can be downloaded. For cases were the
amount of data is to much to be downloaded Backblaze offers a service to
mail a encripted flash drive or hard drive instead.

BigML
=====

BigML [@hid-sp18-504-cloudacad-bigml] is a Machine Learning platform
focused on delivering a wide range of ML solutions, while aiming to
provide a simplified user experience. Considered as a MLaaS, BigML
integrates with most Cloud storage systems in order to load data and
train machine learning models to develop predictive insights. BigML is
also platform-agnostic, and can utilize existing cloud services, such as
'AWS S3, MS Azure, Google Storage, Google Drive, Dropbox, etc' in order
to import data [@hid-sp18-504-cloudacad-bigml]. The BigML platform can
handle machine learning tasks such as classification and regression,
anomoly detction, cluster analysis, association discover, time series,
and topic modeling [@hid-sp18-504-bigml].

The platform also includes a large number of visualizations and offers
both a Web UI and API interfaces to deliver these machine learning
services. The data sets are reusable, and can be used to build a number
of models and ensembles to improve predictive performance. It is also
possible to convert these models into procedural code that is offered in
various different languages and formats [@hid-sp18-504-cloudacad-bigml].

Blockchain
==========

A blockchain is a continuously growing list of linked records, called
blocks. The most recent transactions are recorded and added to it in
chronological order, it allows the public to keep track of all
transactions in the chain without central recordkeeping. Each computer
participating in the blockchain gets a copy of the data which is
downloaded automatically.

Blockchains are decentralized by design and provide a new level of the
way we trust data. For use as a distributed ledger, a blockchain is
typically managed by a peer-to-peer network on the internet collectively
agreeing to a protocol for validating new blocks. Once recorded, the
data in any given block cannot be changed. One computer trying to tamper
a record would have to beat all the computers in the network that are
verifying the transactions. Thus tampering is very close to
impossibility.

Blockchains

> ``are an example of a distributed computing system with high
> Byzantine fault tolerance. Decentralized consensus has therefore
> been achieved with a blockchain. This makes blockchains potentially
> suitable for the recording of events, medical records, and other
> records management activities, such as identity management,
> transaction processing, documenting provenance, food traceability or
> voting'' [@hid-sp18-506-Blockchain].



Alhough, the popular use of blockchain nowadays is with the generation
of cryptocurrency, blockchain has more to offer. Big corporations as
well the government Institutions have been realizing the potential of
the blockchain technology. Recently, the US Department of Health
sponsored a contest to the public to propose how can blockchain be used
to help improve the health care systems of the country. IBM is looking
into how to integrate blockchain in the food industry. Microsoft has
partnered with Accenture to use blockchain to store who don't have any
form of identification and there are billions of them in the world.
Blockchain is here to stay.

IBM BlueMix
===========

BlueMix is a cloud developed by IBM to provide platform as a service s
(PaaS) to build enterprise level application. In 2017, IBM merged
bluemix brand with the IBM cloud brand and now it is known as IBM Cloud
instead of IBM Bluexix [@hid-sp18-402-www-ibm-blog]. All services
offered under IBM Bluemix is now available under IBM Cloud and provides
over 170+ services. These services are published as infrastructure and
platform services. Infrastructure services are consists of Compute,
Storage, Network, Security, Containers and VMware. Platform services are
consists of Boilerplates, APIs, Application Services, Blockchain, Cloud
Foundry Apps, Data and Analytics, DevOps, Finance, Functions, Integrate,
IoT, Mobile and Watson. These wide arrays of infrastructure and platform
services help create enterprise level of applications. IBM cloud also
provides industry-wide solutions in Banking and Finance, Gaming, As
Tech, Retail, Healthcare, Telecommunications, Media and Entertainment
which can be readily used by the business. IBM Cloud provides pricing
options to use its cloud service as free, pay as you go and
subscription. It provides various deployment options as on-premises,
dedicated private cloud or public cloud [@hid-sp18-402-www-ibm].

BMC Multi-Cloud
===============

Cloud service introduced a new concept in how to manage IT application
and the infrastructure cost and as it matured more, many businesses
started adopting cloud solution for their business needs. This resulted
sometimes in multiple cloud implementation depending on the business
needs. This cloud implementation single or multiple poses challenges in
terms of managing their cost, performance, security, automation,
visibility, and migration. BMC Multi-Cloud Management solution is
specifically built to handle all those challenges and help overall cloud
management easy. It provides cost control by providing cloud cost
forecast and analysis. Performance monitor provides real-time
performance tracking across multiple clouds and provides predictive
analytics to keep cloud performance in-check. It provides all assets and
dependencies visibility across the clouds which help in inventory and
change management. Multi-Cloud security ensures security policy
compliance across clouds also it embeds compliance security testing
during software development phase. Automation helps automate workload
across multiple clouds. It has migration service which helps with the
migration to the cloud as well as provides migration plan and simulates
forecast annual cost [@hid-sp18-402-bmc].

Caffe
=====

Caffe is a deep learning framework developed by Berkeley AI Research.
Caffe is optimized for research experiments and industrial applications.
Caffe is built in C++ and CUDA with interfaces available in Python and
MATLAB [@hid-sp18-404-Evan]. The open source collection of deep learning
models is a valuable bundle of tools for research with models including
picture pattern recognition, text parsing, and speech
composition [@hid-sp18-404-jia2014caffe].

Apache Carbondata
=================

As the amount of data we have increases storing and performing analytics
of this data becomes increasingly difficult. Apache carbondata is an
indexed file format for storing big data that allows faster analysis on
a huge amounts of data [@hid-sp18-503-www-carbondata-docs]. Carbondata
runs on top of hadoop YARN and spark and can be uses columnar storage,
compression and encoding techniques to perform faster queries on the
data.

An Apache Carbondata file system consists of groups of data called
blocklets and stores information like schema, in the header and footer
co-located in HDFS. The Footer is read once to create the index which is
later utilized to optimize queries [@hid-sp18-503-www-carbondata-docs].

Apache Carbondata allows operations like creating tables, updating and
deleting them and performing queries on these
tables [@hid-sp18-503-www-carbondata-mgmt].

Cascading
=========

Cascading is an open source data processing project started in early
2008. Cascading functions as a work flow workhorse within the Apache
Hadoop platform and serves as an alternative API to MapReduce. The
Cascading Ecosystems includes multiple project extensions for
compatibility with multiple languages, platforms, and
functions [@hid-sp18-507-CascadingEco]. Originally written in Java, the
Cascading platform can be run on any JVM and includes extensions for
application development using Domain Specific Languages (DSLs) such as
Python, Ruby, Scala or Clojure [@hid-sp18-507-GitHubCascading].
Cascading and the Cascading ecosystem were originally designed to be
used with the Apache Hadoop MapR distribution for the purpose of
developing data-rich applications with analysis and machine learning
capabilities [@hid-sp18-507-MapR].The open source platform an all
extensions are available through the Apache Public License.

Clive
=====

Clive is an open-source, distributed operating system written in Go by
the Laboratorio De Sistemas at Universidad Rey Juan Carlos in
Madrid [@hid-sp18-419-www-clive-lsub]. The design goal is to create an
environment where applications and services can be compiled along with
libraries that permit them to run on bare hardware without a software
stack [@hid-sp18-419-www-clive-lsub2014]. The design is based on Plan 9,
a research system developed at Bell Labs in the late 1980s and first
released in 1992[@hid-sp18-419-www-about-plan9], and NIX, a

> ``purely functional package manager'' [@hid-sp18-419-www-about-nix]
> derived from Plan 9 that runs on Linux and Mac OS X.



Clojure
=======

Clojure [@hid-sp18-413-clojure] is a fully functional scripting
language. Although it is a complied programming language, all its
features are available at runtime. Clojure is based on
Lisp [@hid-sp18-413-lisp] and uses the same eco system. It provides
access to Java framework including hints and type inference. Clojure's
main advantage is its implementation of multithreaded
programming.Clojure very efficiently breaks a task into subtasks and
places them on different JVM threads for parallel processing. Parallel
programming has three challenges called three goblins; reference cells,
mutual exclusion and dwarves berserkers and Clojure handles them by
implementing three tools called futures, delays and promises.

Cloud AutoML
============

Cloud AutoML is an innovative tool with simple graphical user interface
to train and test users custom machine learning
models [@hid-sp18-602-www-cloudautoml-main]. And these models can be
directly used from Google cloud via REST API.

The main purpose of developing Cloud AutoML is to enable users with
limited machine learning expertise to train high quality ML models. It
is built on Google learning to learn, transfer learning, and Neural
Architecture Search technologies.

Google has recently launched first product under Cloud AutoML: AutoML
Vision which is a service to access a pre-trained model or create a
custom ML models using Cloud ML Engine, for image recognition. It offers
drag-and-drop interface to upload images, train and manage models, and
then deploy those trained models directly on Google Cloud. For instance,
Disney and Zoological Society of London are actively using AutoML
Vision [@hid-sp18-602-wwww-cloudautoml-blog].

CloudHub
========

CloudHub is a cloud-based integration platform by MuleSoft which is
mainly used for connecting SaaS, cloud and local applications and
Application interfaces. CloudHub is an elastic cloud that can scale on
demand. We can publish REST API's on it.

> ``The CloudHub Virtual Private Cloud (VPC) offering enables to
> construct a secure pipe to on-premise applications through an IPsec
> VPN tunnel, VPC Peering or Direct Connect''
> [@hid-sp18-418-CloudHub-docs].

CloudHub has a REST API which can perform
tasks such as manage, monitor and scale applications.

Microsoft Cognitive Toolkit
===========================

The Microsoft Cognitive Toolkit (CNTK) is an open-source project that
can be used for implementing distributed deep learning commercially. Per
Microsoft,

>

> ``CNTK allows the user to easily realize and combine popular
> model types such as feed-forward DNNs, convolutional neural networks
> (CNNs) and recurrent neural networks (RNNs/LSTMs)''.



Under the covers, CNTK implements stochastic gradient descent that are
automatically parallelized across multiple GPUs and
servers [@hid-sp18-510-web-cntk].  As of this date, CNTK can be run on
both Windows and Linux operating systems.

> ``CNTK also supports the description of neural networks via C++,
> Network Definition Language (NDL) and other descriptive languages such
> as Python and C\#'' [@hid-sp18-510-kd-cntk].

ConnectTheDots
==============

ConnectTheDots is a Microsoft Open source Technology project which makes
it possible to [@Azure-IoT] connect IoT devices and sensors to the
Microsoft Azure cloud.It includes a variety of [@connectthedots] code
samples and guides, including a sample end-to-end weather alert solution
that uses an Arduino board, a Raspberry Pi and several Azure services.
Operating System can be Windows or Linux.Azure IoT Hub coverts the JSON
string from Sensors and displays a
chart.ConnectTheDots [@connectthedots] provides a Multi-protocol Gateway
to collect data from devices that cannot, or should not, target the
cloud directly

Databricks
==========

Azure Databricks is founded as an open source project by Microsoft in
collaboration with and the creators of Apache Spark and Databricks
aiming to help clients with cloud-based big data processing using Apache
Spark [@hid-sp18-409-www-databricks]. Databricks is closely coupled with
Azure to provide easy integration, streamlined workflows, and an
interactive workspace which satisfied the requirements of data
scientists and data engineers [@hid-sp18-409-www-databrick-doc]. Azure
Databricks is packaged with the complete open-source Apache Spark
cluster technologies such as Spark SQL and DataFrames, Streaming, MLib,
GraphX and Spark Core API [@hid-sp18-409-www-databrick-doc]. The main
advantage of Azure Databrick platform is that it is a zero-management
cloud platform that includes fully managed Spark clusters, an
interactive workspace for an exploration and visualization and a
platform for powering Spark-based applications
[@hid-sp18-409-www-databricks]. As Databricks website showcases, Viacom,
Shell Energy, HP Inc and Hotels.com are few successful applications
which utilizes Databricks services [@hid-sp18-409-www-databricks].
Databricks also provides enterprise level Azure security to protect the
data using Azure Active Directory integration, role-based controls,
SLAs, etc. [@hid-sp18-409-www-databricks].

Datalab
=======

Cloud Datalab [@hid-sp18-504-google-datalab] is an open source tool part
of the Google Cloud Platform suite which focuses on delivering analytic,
machine learning and visualization solutions. Fully integrated with the
Google Platform Suite, Datalab can leverage the data stored in various
other Google solutions ranging from BigQuery and Machine Learning Engine
to Compute Engine and Cloud Storage [@hid-sp18-504-google-datalab]. In
addition to this integration, Cloud Datalab delivers a solution for
developers to generate reports after exploring, transforming, and
visualizing data using Python, SQL, and Javascript. Visualizations are
primarily derived from sources such as Google Charting or
matplotlib [@hid-sp18-504-techcrunch-datalab].

Based on Jupyter [@hid-sp18-504-google-datalab], Datalab utlizes the
existing platform community and supports a 'large number of existing
packages for statistics, machine learning
etc' [@hid-sp18-504-google-datalab]. Developers can also extend this
open source software by forking it. However, it should be noted that
although this is an open source product and is free, cost is a factor
once this is deployed as an App Engine application and cloud services
are utilized [@hid-sp18-504-techcrunch-datalab].

Datameer
========

Datameer is self service, schema free Big Data Analytics tool which
provides end to end analytics. Datameer, a data analytics application
purpose-built for Hadoop. It offers big data integration, analytics,
visualization, smart execution, technology, app market, cloud, and smart
analytics products. Datameer provides Smart Execution, which selects and
combines computation frameworks for Datameer workloads. It also offers
Smart Analytics, which provides advanced functions, including
clustering, decision trees, column dependencies, and recommendations to
find groups and relationships. Datameer is also used in cleansing the
data that was ingested or as it is being ingested, and then it has the
ability to query the data using Hive/Spark and provide visualization for
the queried data. Datameer scales up to thousands of nodes and is
available for all major Hadoop distributions [@hid-sp18-513-datameer].
Datameer specializes in analysis of large volumes of data. Datameer
provides end to end solution from data extraction, profiling, cleansing,
transforming, merging, securing and finally visualization.

DBI
===

DBI is a package for R that provides a common interface to databases for
R programmers to use [@hid-sp18-403-R-dbi]. This allows R to access data
that is too big to fit into local memory, or even onto local disk. Key
components are classes for database connections, and database results,
which can be treated differently, to minimize local computation.
Connections to particular database systems, such as MySQL, or PostgreSQL
are handled through connectivity packages, such as
*odbc* [@hid-sp18-403-rstudio-odbc].

DBplyr
======

DBPlyr is the bridge between R's immensly popular tidyverse, and the DBI
data connection family [@hid-sp18-403-tidy-dbplyr]. The package allows
tables on remote or local databases, regardless of backend, to be
treated as first-class data structures in R. It does this by
procedurally generating (ususally SQL) queries for the databases on the
fly [@hid-sp18-403-R-dbplyr]. While the data semantics are agnostic (all
data structures are treated the same, regardless of provenance), dbplyr
is aware of the limitations of different systems, and will adjust its
queries accordingly. Further, dbplyr will evaluate queries lazily,
meaning that almost no data is transferred into local memory until it is
explicitly asked for.

Data Virtualization
===================

Data Virtualization is a modern approach of data integration.Denodo is a
data virtualization platform [@denodo] which provides agile, high
performance data integration and data abstraction capabilities.Denodo
platform [@denodo] acts as a logical abstraction between disparate data
sources and consuming applications.Denodo allows [@denodo] intelligent
caching for real-time performance.By becoming single virtual layer
Denodo Platform [@denodo] reduces redundancy and resolved quality issues
by imposing data model governance.Denodo platform can be used for many
use cases covering operational and analytics functions.

Distributed Machine Learning Tool Kit
=====================================

Distributed Machine Learning Tool Kit, or otherwise known as
DMTK [@hid-sp18-504-dmtk], is a scalable collection of distributed
machine learning algorithms capable of training models on big data sets
for increased accuracy. This collection of ML algorithms and
computational resources is managed, and has new content added, by
Microsoft. The existing DMTK product includes a DMTK Framework for a
'unified interfaces for data parallelization, hybrid data structure for
big model storage, model scheduling for big model training, and
automatic piplelining for high training
efficiency' [@hid-sp18-504-dmtk]. DMTK also includes LightLDA (a topic
model algorithm), Distribued Word Embedding, and Light GBM (a
gradient-boosting tree framework). Developers are also able to utliize
the framework for their own custom ML algorithms [@hid-sp18-504-dmtk].
Microsoft has made DMTK open source to encourange ML practitioners and
researchers to make contributions to the
toolkit [@hid-sp18-504-msresearch].

DMTK's system innovations regarding its computational resources allow
for users to run big data/model algorithms with increased performance.
An example of 'a topic model with one million topics and a 20-million
word vocabulary, or a word-embedding model with 1000 dimensions and a
20-million word vocabulary, on a web document collection with 200
billion tokens' would take a machine cluster of 24 machines as opposed
to using thousands [@hid-sp18-504-msresearch]. Capabilities extend
beyond just topic modeling and cover various machine learning complex
tasks such as speech recognition and computer
vision [@hid-sp18-504-msresearch].

docker
======

Docker is an open platform for developers and sysadmins to build, ship,
and run distributed applications, whether on laptops, data center VMs,
or the cloud [@hid-sp18-513-docker]. It is designed to make it easier to
create, deploy, and run applications by using containers. Containers
allow a developer to package up an application with all of the parts it
needs, such as libraries and other dependencies, and ship it all out as
one package. Docker is like a virtual machine but it does not require to
create a whole virtual operating system, Docker allows applications to
use the same Linux kernel as the system that they're running on and only
requires applications be shipped with things not already running on the
host computer. This gives a significant performance boost and reduces
the size of the application  [@hid-sp18-513-opensource].

Dokku
=====

Dokku [@hid-sp18-402-www-dokku] is a Platform as a Service (PaaS) that
runs on a single server which helps build and manage the lifecycle of
applications. It is powered by Docker and can be installed on any
hardware. Dokku requires minimum of 1GB memory and Ubuntu 16.04 x64,
Ubuntu 14.04 x64, Debian 8.2 x64 or CentOS 7 x64 for the installation.
It supports application deployment through git. Technically Dokku is a
set of scripts which combined as build pipeline. It takes input as code
and generates the running application. It mostly is written in shell
script and provides various features as plugins, for example, config,
storage etc. Dokku helps in easy code deployment to the cloud so that
developers can concentrate more on application
logic [@hid-sp18-402-www-dokkuG].

Drake
=====

Drake is an R package focused on reproducible research and
high-performance computing [@hid-sp18-403-R-drake]. It is an R-centric
version of Make. The core functionality of Drake is based on the idea
that space is cheaper than time. Therefore, it stores local caches of
target objects when they are built, along witht the commands that were
used to build them. From this, it can build a dependency network, and
automatically determine which objects are outdated before the next run,
and only build the required objects. Because it is R-focused, it has an
advantage over *make* in that it allows for easy plan expansion, rather
than make's requirement for explicit commands and targets. Drake also
enables higher performance computing, by allowing users to build
multiple targets at once, elevating R past its single threaded default.

Google Dremel
=============

With vast amount of publicly available data over the internet/cloud,
there was a need of technological system/framework that is deployed on
cloud which can execute on demand queries in faster and scalable way for
read only multi level nested data. Along with that a system that uses
structured query language, which is widely adapted and extensively used
by the developers for writing queries to avoid the learning curve of new
language. To fill this gap Google came up with Dremel. It is a
interactive ad hoc query system that lets the user query the large
dataset providing them results with much faster speed compared to
traditional technologies [@hid-sp18-523-www-dremel].

> ``By combining multi-level execution trees and columnar data layout,
> it is capable of running aggregation queries over trillion-row
> tables in seconds'' [@hid-sp18-523-www-dremel].



> ``Dremel is capable of scaling up to thousands of CPUs and petabytes
> of data'' [@hid-sp18-523-www-dremel].


MapReduce framework and technologies thar are built over it such as Pig,
Hive etc has latency issue between running the job and getting output.
Dremel on the other hand took a different approach, it uses execution
engine based on on aggregating trees algorithm that provides output
almost realtime for queries.

Druid
=====

Druid is a high-performance, column-oriented, distributed datastore
written in Java. Druid can be used to analyze large volumes of real time
streaming data as well as historic data. Druid is horizontally scalable
in a cost effective manner and also has the ability to support
multi-tenant applications [@hid-sp18-416-www-druid-wikipedia]. In
addition to the above mentioned key features Druid also includes the
capability to execute fast Online Analytical Processing (OLAP) queries
and is fault-tolerant in nature [@hid-sp18-416-www-about-druid]. The
Druid cluster is built from components such as Druid segments,
historical nodes, coordinator nodes and broker nodes. Druid also has
been identified as a very fast analytics database for fast real-time
applications [@hid-sp18-416-www-fast-dataanalytics-druid-blog].

IBM Data Science Experience
===========================

IBM has compiled data science tools in one location, called Data Science
Experience. This one location provides access to the IBM Cloud, and
allows a customer to run applications from the public or private cloud
[@hid-sp18-525-dsx]. Data Science Experience also allows desktop
operations of popular tools[@hid-sp18-525-dsx]. IBM's Watson computing
platform is available in Data Science Experience. Machine learning
models through Watson utilizing its vast computing resources.
Additionally, open source applications and technologies, such as Python,
R, and Apache Spark give users a robust data science toolkit from which
to work[@hid-sp18-525-dsx]. Every aspect of data science is available in
Data Science Experience. Visual- izations of results are a part of Data
Science Experience. Tools such as PixieDust and Brunel are available,
without programming experience[@hid-sp18-525-dsx].

Apache Edgent
=============

The number of connected devices are constantly increasing. Many of the
devices that form the internet of thingss (IoT) are sensors, or devices
that are lightweight and do not have a lot of storage space or
processing power. Apache Edgent is a programming model that allows
development in Java and Android environments and provides a way to
perform analytics locally on the edge devices, thus preventing the need
to send data back and forth to servers [@hid-sp18-503-www-edgent].
Apache Edgent can help reduce the amount of data needed to be stored as
analytics can be performed on the data continuously and, only relevent
information such as outliers that need to be recorded or data that needs
further analysis that require higher computation resources need to be
sent to the server [@hid-sp18-503-www-edgent-docs].

Apache edgent can work along with centralized analytics tools thus
providing a way to do more thorough analysis on the IoT system. Edgent
can communicate with with backend systems using common messaging hubs
and communication protocols like MQTT, Apache Kafka, IBM Watson IoT
platform, and allows custom message hubs as
well [@hid-sp18-503-www-edgent-docs].

Elasticsearch
=============

The central engine to the Elastic product line, Elasticsearch is a
distributed, RESTful search engine designed to grow with growing data.
Elastic search is a search engine based on Apache's Lucene search
library with the first version being released in early
2010 [@hid-sp18-507-ElasticWiki]. Elasticsearch is capable of searching
and storing multiple data types, including numeric data, text, geo, and
varying levels of structured data using s schema-free JSON format. In
adition to the ability to search in real-time, Elasticsearch is capable
of analyzing queried results. Elasticsearch's use is compatible with
multiple languages such as Curl, Java, Python, C-Sharp, PHP, Perl,
JavaScript, and more [@hid-sp18-507-Elasticsearch]. DB-Engines, a


> ``Knowledge Base of Relational and NoSQL Database Management
> Systems'' ranks Elasticsearch as the top search engine, ahead of
> both Splunk and Solr [@hid-sp18-507-DBEngines].



Amazon EMR
==========

Amazon EMR [@hid-sp18-521-AmazonEMR] is a Hadoop framework that allows
the user to process data on the AWS platform using their EC2 technology
to spread the load across multiple EC2 instances. Elasticity a major
benefit of this product as it can be set to auto scale up or down the
number of EC2 instances that EMR is running in a cluster. The user can
choose to run a few additional frameworks supported on EMR in addition
to Hadoop, such as Spark, HBase, Flink and Presto. It allows the user to
focus on the processing of the data and not have to deal with the setup,
management or tuning of a Hadoop cluster. Using EMR allows a user to
setup and provision a Hadoop cluster quickly and you can scale your
compute resources up or down as needed. You can interact with EMR
through a web service interface or you can also use the AWS Management
Console to launch and monitor your clusters.

ESRI
====

Environmental Systems Research Institute (ESRI) offers geospatial
related data services and process online through its proprietary API.
Features of the ESRI platform include access to basemaps, geocoding,
demographic data, a dynamic world atlas, and multiple data sets in a
open-data resource [@hid-sp18-505-ESRI2018].

Ethereum
========

Ethereum is an open-source, public, distributed computing that

> ``runs smart contracts: applications that run exactly as programmed
> without any possibility of downtime, censorship, fraud or
> third-party interference'' [@hid-sp18-506-EthereumOrg].



A smart contract is a computer protocol intended to digitally
facilitate, verify, or enforce the negotiation or performance of a
contract without third parties which means there is no need for
*middlemen* like lawyers or notaries. In theory, this means that you can
carry out transactions without the waiting times inherent to paper
filings, and without paying fees to whoever would typically oversee such
a transaction. This is particularly important for people living in
countries where the legal system is corrupt, or woefully inefficient.
These transactions are trackable and irreversible.

Although smart contract technology is still a very new, it has a wide
range of potential applications like as voting, global supply chains,
medical records, the financial system. It is very promising it is
believed that its full potential has yet to be discovered.

One application of Ethereum is the generation of Crypto currency. There
are still a lot of doubts regarding the usefulness of cryptocurrency. A
lot of people are still on the fence whether they Use cryptocurrency as
a real currency or not. However, the blockchain technology on which
Ethereum is running is a real technology that has a lot of practical
applications. Big companies and government institutions are investing in
the blockchain technology and Ethereum can play a major role in it.

Firebase
========

Firebase is an open source project found by James Tamplin and Andrew Lee
in 2011 and later acquired by Google in
2014 [@hid-sp18-409-www-firebase]. Firebase cloud services started as an
online chat message service and soon expanded to provide cloud services
such as Firebase cloud messaging, Firebase auth, realtime database,
Firebase storage, Firebase hosting, Firebase test lab for Android and
iOS and Firebase crash reporting [@hid-sp18-409-www-firebase-official].
A new version of Firebase has released after merging with Google and it
provides an unified cloud platform to build Android, iOS, and web Apps
[@hid-sp18-409-www-firebase-official]. After the acquisition, Google has
stopped supporting their cloud messaging services and merged it with
firebase cloud messaging services [@hid-sp18-409-www-firebase-merged].
Admob, Analytics, Authentication, Indexing, Test Lab, and Push
Notifications are few important features introduced in the latest
release of Firebase [@hid-sp18-409-www-firebase-official]. As James
[@hid-sp18-409-www-firebase] stated, push notification support for
Android and iOS mobile application is recently identified as the most
famous feature of firebase cloud services.

Firepad
=======

Firepad is an open source real-time collaborative code and text editing
cloud platform found by Google in 2016 and licensed under
MIT [@hid-sp18-409-www-firepad]. It is mostly used for rich text editing
and code editing as it is empowered with true collaborative editing and
intelligent operational transform-based merging and conflict
resolution [@hid-sp18-409-www-firepad-wikipedia]. Some important
features included in the Firepad are cursor position synchronization,
undo and redo, text highlighting, user attribution, presence detection
and version check-pointing. As Michael
Lehenbauer [@hid-sp18-409-www-firepad], the founder of Firepad claims
that it has no server dependencies and yet provide real-time data
synchronization using the Firebase realtime database technology. It is
easy to integrate Firepad to any application since inclusion of few
JavaScript files would enable the Firepad in all modern browsers such as
Chrome, Safari, Opera 11+, IE8+ and Firefox 3.6+
[@hid-sp18-409-www-firepad]. As Firepad website showcases, Socrates.io,
Nitrous.IO, LiveMinutes, Koding, CoderPad.io and ShiftEdit are few
successful applications which utilizes
Firepad [@hid-sp18-409-www-databricks]

Fission
=======

Fission [@hid-sp18-521-FissionBlog] is an open source, serverless
framework for Kubernetes. It allows you to create HTTP services on
Kubernetes from functions and can help make Kubernetes easier to work
with by allowing a user to create services without having much knowledge
Kubernetes itself. Fissions method of making things easier for the user
is to allow the majority of users to be able to work at the source
level. It can abstract away containers from the user. To use it, you
create functions using a variety of languages and then add them with a
CLI tool. Functions are called when their trigger fires and they only
consume CPU and memory while they are running. Idle functions consume no
resources with the exception of storage. Some of the suggested uses for
Fission are chatbots, webhooks, Rest APIs and Kubernetes events. The
only languages supported for it right now are NodeJS, PHP, Go, C\# and
Python.

Fluentd
=======

Fluentd is a data collector used by many organizations such as Amazon,
Microsoft, and Google[@hid-sp18-526-www-fluentd]. It is open source and
available on GitHub. Fluentd creates a layer of abstraction between the
source of the data and backend, known as the *Unified Logging Layer*.
This centralized system of data collection ensures security and
reliability. Logs contain important information, but due to modern data
sizes, they are no longer for just human use. The purpose of the logging
layer is to allow more machine reading of logs as opposed to human
reading.

In the logging layer, data is converted to json, then sent to the
backend. Fluentd has a plugin system for many different programs, such
as Python and Node.js. There are also custom versions of Fluentd in
production. Google, for example, uses their own version of fluentd as
their logging layer in conjuction with Google BigQuery. The Fluentd
project also includes *Fluent Bit* which is a data forwarding system.

Future Grid
===========

Future Grid wroks through four ways, which contains Connect, Configure,
Deploy and Learn [@www-futuregrid].

From the official website we can know that, Performance is the most
important things.

> ``Future Grid Platform processes and analyses billions
> of data points per day'' [@www-futuregrid].

It can reduce the time of
processing data about 90%. The plarform can be connected to a wide
variety of data sources. Furthermore, Future Grid Platform's provide
end-to-end control.

Steve Avery said,

> ``Future Grid's innovative data platform delivers high-speed data
> processing that's ideal for IoT and Data Science environments in the
> Energy and Utility sector. We enjoy a strong working relationship
> with the Future Grid team and appreciate their deep understanding of
> Utilities as well as their ability to prepare relevant, affordable,
> ROI-focused Use-Cases for our clients'' [@www-futuregrid].



Google Genomics
===============

With the size of medical data getting increased exponentially from
petabytes to exabytes rapidly, Google came up with Google Genomics as
extension to Google cloud platform.It helps the life science community
organize the world's genomic information and make it accessible and
useful [@hid-sp18-523-www-genomics]. Researchers are able to apply
Google powerful technologies such as Google Search and Maps to securely
store, process, explore, and share large, complex genomics
datasets [@hid-sp18-523-www-genomics].

> ``Multiple genome repositories data can be processed using Google
> Genomics within seconds as it is backed by Google bigtable and
> Spanner technologies'' [@hid-sp18-523-www-genomics].



> ``It is based on open standard from Global Alliance of Genomics and
> Health achieving higher level of interoperability for genomics
> data'' [@hid-sp18-523-www-genomics].

It is fully integrated with Google
cloud virtual machine, storage and SQL/NoSQL
databases [@hid-sp18-523-www-genomics].

> ``It helps analysing Genomic data in real-time with BigQuery, in
> literate programming style with Cloud Datalab, in batch with GATK on
> Google Genomics, with Apache Spark or Cloud Dataflow, or with a Grid
> Engine cluster'' [@hid-sp18-523-www-genomics].



Gephi
=====

Gephi [@hid-sp18-402-gephi] is an open source software for visualization
and exploration for all kind of graphs and network. It is a useful tool
for data analyst and scientist to understand network and relationship.
This tool is developed in Java and needs Java 1.7 or higher. It provides
the capability to generate various graphs, interact with those graphs,
manipulate the graph to discover the pattern. These graphs mostly
consist of nodes and edges. Edges ate nothing but the relationship
between various nodes. Gephi has various layouts which provide graph in
a different layout for the analysis purpose. Real-time visualization
capability provides analysis by changing graph in real time through data
filtering. Data filtering capability help reduce nodes and edges in the
graph to do drill down analysis or keeping graph in human readable
format. It has statistics and matrix framework which provides social
network analysis and help community detection which is called as
modularity. Gephi has Data Laboratory which allows us data manipulation
as well as data transformation for analysis. It provides data import
capability through various graph file format as well as CSV format. The
export capability provided by Gephi exports graph in pdf and image
format for analysis and presentation. It supports big data to some
extent by processing capability of around 100k data points. It can be
extended using built-in plugin center. It is supported on Windows, Mac
OS X, Linux platforms [@hid-sp18-402-gephiF].

GitHub Developer
================

GitHub is a software management platform that offers free and fee-based
services that can be used for managing source code for software
projects. However, GitHub also offers an API through its Developer site.
The API can be used to analyze a large body of data that is stored at
GitHub. The data can be used to provide insight into trending software
technologies, data sources that pertain to non-software management
domains. For example, the GitHub resource
OpenRefine [@hid-sp18-505-OpenRefine2018] is a reference to a variety of
data sources that are open for public use [@hid-sp18-505-GitHub2018].

Apache Gobblin
==============

As the amount of data increases and its sources become numerous, it gets
difficult to integrate this data to solve a specific problem. Apache
Gobblin [@hid-sp18-503-www-gobblin] is a distributed data integration
framework that allows users to build different data integration
applications, usually as separate jobs wihch are executed with the help
of a scheduler [@hid-sp18-503-www-gobblin-docs]. Gobblin can be deployed
in a stand alone manner and also supports deployment on a Hadooop,
Apache Mesos or Amazon Elastic Cloud
cluster [@hid-sp18-503-www-gobblin].

Currently Gobblin deployments run independently of each other and there
is no central management o orchestration. However, efforts are being
made to develop Gobblin-as-a-Service which whould manage data
integration jobs on any mode of Gobblin
deployment [@hid-sp18-503-www-gobblin-docs].

Google BigQuery
===============

Google BigQuery is a cloud-based big data analytics web service for
processing very large read-only data sets. BigQuery can analyze data on
the order of billions of rows, using a SQL-like syntax. It runs on the
Google Cloud Storage infrastructure and can be accessed with a
REST-oriented application program interface
(API) [@hid-sp18-501-TechTarget].

BigQuery enables the creation of a logical data warehouse over managed,
columnar storage as well as data from object storage, and spreadsheets.
It also allows the capture and analysis of data in real-time using its
powerful streaming ingestion [@hid-sp18-501-GoogleCP_BQ].

Google Docs
===========

Google Docs is a free office suite offered by
Google [@hid-sp18-601-www-gdoc-about]. It is a part of Google Drive,
therefore cloud syncing is native. Google Docs is a collaborative tool
for creating and editing documents in real time. It allows for multiple
users to edit the same file. While it has apps in Android and iOS it
only has PC programs on Chrome Books.

Google App Engine
=================

Google App Engine, generally called App Engine is a Platform as a
service cloud solution (PaaS). It lets you build and run applications on
Google's cloud infrastructure. In this platform the developer does not
have to worry about infrastructure such as database administration,
server configurations and load balancing which is done by google.
Developers only job is to develop source codes. It claims to be highly
scalable as it can automatically increases capacity depending upon the
workloads [@hid-sp18-415-www-scalabitity].

Applications in App Engine can be run in either Flexible or Standard
Environment or both can be used at the same
time [@hid-sp18-415-www-cloud-goggle]. Automatic scaling of apps, user
customization of runtime (Eclipse Jetty 9, Python 2.7 and Python 3.6,
Node.js, Ruby, PHP, `.NET` core, and Go), operating system and even CPU
memory are some of the features of App Engine Flexible
environment [@hid-sp18-415-www-cloud-goggle]. Applications in Flexible
environment run in Docker containers on Google Compute virtual machines.
While in App Engine Standard Environment application instances are run
in sandbox with prespecified runtime environment of supported language
(Python 2.7, Java 7, Java 8, PHP 5.5 and GO 1.8,
1.6) [@hid-sp18-415-app-engine]. This means if source code uses Python
then its instances are run in Python runtime.

Cloud Bigtable
==============

Cloud Bigtable is googles NoSQL big data storage service. This is
currently used by google itself for their own services like search
engine, Gmail, Maps. It is highly scalable big database with low latency
and high throughput achieved by distributed computing. Using this
database makes it easy to integrate the database with other cloud
services provided from google such as cloud dataflow. Also it allows to
integrate with big data tools like Hadoop. It can achieve high
performance of millions of transactions per
second [@hid-sp18-502-GoogleCloudBigtable].

Google Compute Engine
=====================

As an infrastructure as a service Google Compute Engine (GCE) provides
scalable, high performance virtual machines to their
clients [@hid-sp18-415-cloud-google]. Its virtual machines vary in CPU
and RAM configurations and Linux distributions depending on clients'
need. Network storage are attached to virtual machines are attached as
persistent disks. Each of these disks' size can be upto 64TB and they
are automatically resized based on demands [@hid-sp18-415-cloud-google].
This feature of GCE's virtual machines makes it scalable and reliable.
Another feature of GCE includes its global load balancing technology
which allows distribution of multiple instances across different
region [@hid-sp18-415-cloud-google]. It provides a platform to connect
with other virtual machines to form a cluster or connect to other data
centers or other google services [@hid-sp18-415-cloud-google]. It can be
managed through RestFul API or command line interface or web console. It
claims to be cost effective and environmentally friendly compared to its
competitors like Amazon Web Services.

Google Firebase
===============

Google Firebase is an Commercial cloud based platform that provides
users with the capability to build mobile applications for various
platforms such as Android/ios with several language support. The cloud
service also provides solutions for hosting the app/database, monitoring
and all necessary functionalities. The complimentary products available
for the mobile applications built through the platform enable for usage
Analytics, predictions, ad campaign and a ton of other development
features. This platform is also available free of cost with limited
functionalities for individual users.

Google Load Balancing
=====================

Google Cloud Load Balancing is a high performance, scalable load
balancing, which has state of the art auto scaling feature which
distributes traffic intelligetly such that application still have
resources in spite of huge increase in traffic and it does not require
pre-warming, as it quickly reaches from zero to full-throttle. Google
Load balancing support different flavors such as HTTP,TCP/SSL and UDP
Load Balancing[@hid-sp18-602-www-loadbalancing-main]. Also the new UI
enables users to integrate any of these flavors easily through a single
interface.

Google Stackdriver
==================

With increasing cloud-based applications it is hard for Devops engineers
to keep track of performance, availability and issues associated with
these applications. Google Stackdriver is a powerful service for
monitoring, logging, and diagnostics. It support applications deployed
on Google Cloud Platform,Amazon Web Services, and both combined
[@hid-sp18-602-www-google-stackdriver-main].

Stackdriver provides a wide variety of features such metrics,
dashboards, alerting, log management, reporting, and tracing
capabilities, which ultimately enables users to find and fix issues
faster[@hid-sp18-602-www-google-stackdriver-main].

Apache Gossip
=============

Many of the applications that are cloud based and require a huge amount
of computation or data storage in the back end, use cloud based
clusters. When different nodes in a cluster rely on services provided by
other nodes, it becomes important that each node has information about
the others, to avoid failures. Apache Gossip is a protocol that provides
a method that allows nodes to form a peer-to-peer network and allows
them to discover other nodes and check the liveliness of the cluster
[@hid-sp18-503-www-gossip].

The name arises from the family of protocols known as gossip protocols
or epidemic protocols that disemminate information in a manner similar
to how gossip spreads in a community. Each node periodically selects any
other node at random and shares the information it has, thus eliminating
the need to broadcast from every node to every other node in the cluster
[@hid-sp18-503-www-gossip-wiki].

GraphQL
=======

Data services have been an important component in the evolution of the
information age. In the early 2000s data-based web services relied
heavily on structured data formats like Extensible Markup Language
(XML). Other data formats also included raw or plain text, or serialized
data objects. Whether for public or private use, in most cases there was
and has been a necessity for documenting data services. In other words,
web service consumers need to know what data is available and how to
query that data. In the case of XML, web-services were typically
developed with Web Services Description Language
(WSDL) [@hid-sp18-505-WSDL2018] as part of the service.

Over time, challenging issues related to using XML as a data delivery
format emerged. The JSON [@hid-sp18-505-JSON2018] data format in
conjunction with the REST [@hid-sp18-505-REST2018] architecture emerged
as an alternative to XML and SOAP. However, REST also has challenges in
terms of documenting the services and data available in this type of
REST architecture.



> ``GraphQL has emerged as query language that can reside on top of
> the REST architecture and address many of the issues associated with
> using XML/SOAP and JSON/REST'' [@hid-sp18-505-GraphQL2018].



AWS Greengrass
==============

AWS Greengrass [@hid-sp18-521-Greengrass] is a product that allows a
developer to create serverless code residing on AWS that can then be run
locally on your devices. Those devices are then able to act locally on
the data it creates while being able to utilize the cloud for handling
the infrastructure. Devices can still communicate with each other even
when unable to connect to the Internet. Filters can also be added
locally to each device allowing the user to be able to control what data
is being sent back to the cloud. It can help users create IoT solutions
which allow connectivity between many different types of devices and the
cloud simultaneously. Greengrass supports many different programming
languages. One of its core features is machine learning inference, which
allows a device to directly perform inference, or applying an already
trained and optimized model to new data, before sending the
appropriately filtered data back to the cloud.

H20
===



> ``H20 is a open source platform that can execute highly advanced and
> complex machine learning algorithms in faster and scalable
> way,regardless of the size, format and location of the
> data'' [@hid-sp18-523-www-h2o].



> ``It achieves this by serializing the data faster between nodes and
> clusters that stores huge amount of data. Data processing is done in
> memory thus providing faster response'' [@hid-sp18-523-www-h2o].



> ``It uses fine grain parallelism technique for processing of
> distributed data archiving 100x faster speed as compared to
> traditional mapreduce without compromising on
> accuracy'' [@hid-sp18-523-www-h2o].

H2O4GPU, Sparking Water and driverless AI are popular products of
H2O. Many companies across different domain such as banks, insurance,
online sales are using H2O platform for their machine learning and AI
related research.

HCatalog
========

HCatalog, which was originally known as Howl, is a component shipped
with Hive that manages storage and tables. Its purpose is to simplify
data storage and retrieval by providing a shared schema and data type
mechanism between Hive, Pig, and MapReduce and the formats in which a
Hadoop serializer-deserializer can be written (ORC, RCFile, CSV, JSON,
and SequenceFile.) Custom formats can be added as well. A REST API
called WebHCat (originally Templeton) is also
available [@hid-sp18-419-www-hc-wiki].

Heroku
======

Heroku, an open cloud platform provides developers a stage where they
can develop and deploy their applications. It is a Platform as a service
solution [@hid-sp18-415-www-heroku]. Its applications are run in virtual
containers called dynos and services are hosted by Amazon's EC2 cloud
computing platform  [@hid-sp18-415-wiki-heroku]. Dynos support languages
like Node, Python, Ruby, PHP, Scala, Clojure and Java. The applications
or source code and their framework and dependencies can be written in
any of the above specified languages as heroku supports them
 [@hid-sp18-415-how-heroku-works]. Source code dependency vary according
to the language being used. Applications are specified in a text file
called *Procfile*  [@hid-sp18-415-how-heroku-works]. Then these
applications are deployed remotely through git push. Besides Git,
applications can be deployed to Heroku using GitHub integration, Dropbox
Sync., and Heroku API [@hid-sp18-415-how-heroku-works]. After
applications are deployed, compilation of source code, their
dependencies and necessary assets take place. The whole assembly of
compilation is called slug  [@hid-sp18-415-how-heroku-works]. Then
Heroku executes application by running command specified in Procfile.
Commercial and business applications like Macy's, Toyota use Heroku
cloud platform because of its high scalability and its continuous
deployment. PostgreSQL, MongoDB, Redis and Cloudant are common database
choices of Heroku [@hid-sp18-415-www-heroku].

Hue
===

Hue or Hadoop User Interface is an open source tool licensed under
Apache v2 license. It sits on top of the data at the visualization layer
and provides a graphical user interface to operate and develop
applications for performing self-service data analytics. The latest
version of Hue available is v4.1.0, released October 4th 2017 and can be
downloaded from the website  [@hid-sp18-517-hue-apache]. Hue is an open
source Analytics Workbench for browsing, querying and visualizing data.
Hue works well for a variety of technologies in the Hadoop ecosystem
such as Hive, Impala, Pig, MapReduce, Spark. Query tool works with
SparkSQL, Solr SQL and Phoenix. Further it works well with RDBMS such as
Oracle and MySQL [@hid-sp18-517-Hue-wiki]. Some of the applications of
Hue are analytics dashboards, job scheduling, workflows, it also serves
as an interface for jobs, HDFS, S3 files, SQL Tables, Indexes, Git
files, Sentry permissions, Sqoop and more [@hid-sp18-517-Hue-wiki].Hue
is available in all major Hadoop distributions such as Cloudera,
Hortonworks, MapR and AWS [@hid-sp18-517-Hue-wiki].

IBM Cloud
=========

In 2017, IBM fully committed to cloud computing. IBM BlueMix is now IBM
Cloud. The changes go far beyond the name. The new platform gives IBM a
new, singular way to engage customers [@hid-sp18-525-cloud]. Now,
services are available on public or private clouds, with added
capabilities, including database, artificial intelligence, and
blockchain[@hid-sp18-525-cloud]. In IBM Cloud, many popular services and
applications are available, with public or private access No cloud
presence is possible without a strong net- work. IBM has included an
industry leading level of network capabilities. To ensure security,
access, and redundancy, IBM operates 60 data centers
[@hid-sp18-525-cloud]. The IBM Cloud connects data science and other
tools, such as VMware, SAP, Spark, Jupyter, R, and many others
[@hid-sp18-525-cloud]. Both open source and proprietary applications and
services are part of IBM Cloud. As an industry leader in blockchain,
IBM's use of the technology is featured in IBM Cloud. Blockchain is
becoming the most known product IBM offers, and it is a major componet
of IBM Cloud[@hid-sp18-525-cloud].

ID2020
======

ID2020 is a new software tool sponsored by the United Nations. It will
let millions of refugees and other without documents whip out a phone or
other device to quickly show who they are and where they came from. The
tool, developed in part by Microsoft and Accenture, combines biometric
data (like a fingerprint or an iris scan) and a new form of
record-keeping technology, known as the blockchain, to create a
permanent identity.

The rapid proliferation of smart devices globally, combined with
ever-increasing computing power and rapidly expanding broadbanda
coverage, enables new methods of registration and facilitates ongoing
interaction between individuals and their identity data.



> ``An estimated 1.1 billion people, including many millions of
> children, women and refugees, globally lack any form of officially
> recognized identification. Without an identity, individuals are
> often invisible - unable to vote, access healthcare, open a bank
> account, or receive an education - and bear higher risk for
> trafficking. Without accurate population data, public and private
> organizations struggle to broadly and accurately deliver the most
> basic human services'' [@hid-sp18-506-NoID].



Most people associate cryptocurrency with blockchain. But blockchain
obviously has more to offer. This is an example where the blockchain
technology has a significant social impact outside of the usual
cryptocurrency. It is so revolutionizing it could replace the data
storage that we traditionally use for big data. Blockchain still has a
lot of untapped potential.

IICS
====

Informatica provides various products in data integration and data
warehousing domain. Informatica provide on premise products for Big
Data, Data Integration, Data Quality, Data Security and Master Data
Management. Informatica also provide cloud products for Integration
Cloud, Data Quality, Governance Cloud, Master Data Management Cloud,
Data Security Cloud and Data As A Service. All the cloud products comes
under Informatica Integration Cloud Services (IICS). with the cloud
approach customer need not to worry about the patching, high
availability of the servers, upgrade etc. IICS is built on micros
services architecture and modern user interfaces and provide complete
end-to-end data management approach. IICS provide New and Modern User
Interface Experience, Template Driven Development, Enterprise
Orchestration, File Mass Ingestion, Integrated Asset Management and APIs
that enable Continuous Delivery. Customer can focus on the logic of the
data processing and all the infrastructure related activities will be
taken care by cloud [@hid-sp18-511-iics].

Instabug
========

Instabug is a cloud service provider which provides in-app feedback,
user surveys, bug reporting, and crash reporting for mobile
applications. The platform was founded in 2012 and as of 2017, Instabug
has been plugged in over 800 million devices including most of the top
100 apps in Android, iOS, Cordova, Ionic, Xamarin, and web application
markets[@hid-sp18-409-www-instabug]. As the
Instabug [@hid-sp18-409-www-instabug] claims most of the top apps in the
world rely on Instabug for beta testing, user engagement and crash
reporting because of it is reliable, and easy to integrate (it comes
with customizable SDK). Instabug is well known for the customizable
Shake to Send feature on the mobile app to invoke the bug reporting,
annotated screenshots, voice note or a screen recording to better
describe the bug to provide a descriptive report on the developer side
without interrupting the user experience
[@hid-sp18-409-www-instabug-wikipedia]. Yahoo, soundCloud, paypal, Lyft,
Buzzfeed, Kik and Nextdoor are few famous applications which uses
Instabug for bug and crash reporting[@hid-sp18-409-www-instabug].

Jaspersoft
==========

Jaspersoft is a Business Intelligence (BI) platform that provides its
customers with highly interactive reports, analytics and dashboards.
This tool has been downloaded more than 14.5 million times which makes
it the most cost-effective, flexible and widely used platforms in the
world [@hid-sp18-516-www-finances-online]. It is embedded with data
visualization, analytics, and reporting capabilities that allows its
customers to gain insight from various data sources and enables them to
make better decisions [@hid-sp18-516-www-finances-online]. This
reporting software is designed to take input from one or more data
sources, including Big Data [@hid-sp18-516-www-wiki-bigdata],
NoSQL [@hid-sp18-516-www-wiki-nosql],
JDBC [@hid-sp18-516-www-wiki-jdbc], XML [@hid-sp18-516-www-wiki-xml],
JSON [@hid-sp18-516-www-wiki-json], CSV [@hid-sp18-516-www-wiki-csv],
Hibernate [@hid-sp18-516-www-wiki-hibernate],
POJO [@hid-sp18-516-www-wiki-pojo] and Web Services and present it in an
easy-to-read, highly interactive format for business
users [@hid-sp18-516-www-jaspersoft-overview]. The print ready,
interactive reports and dashboards enables organizations to interact
with their data both inside or outside their organizations which also
enables for faster business
decision-making [@hid-sp18-516-www-jaspersoft-overview]. This tool
provides a centralized repository, in which a customer can store
user-profiles, dashboards, analytic views, reports, and more. It
supports thousands of users and is designed for small, medium and big
organizations including enterprises [@hid-sp18-516-www-finances-online].
It has a Java-based reporting library
*JasperReports* [@hid-sp18-516-www-finances-online], that provides
pixel-perfect documents and generates ad hoc based reports for the web,
the printer or mobile device [@hid-sp18-516-www-jaspersoft-overview].
JasperReports is an open source reporting tool that can be used in any
Java-enabled applications [@hid-sp18-516-www-wiki-jasperreports].
Jaspersoft is a gold partner with MySQL and was recently acquired by
TIBCO in April 28, 2014 [@hid-sp18-516-www-wiki-jasperreports].

JavaScript
==========

JavaScript is a ubiquitous programming language with an enormous number
of uses. It is best known as the language used to createweb
pages[@hid-sp18-525-java]. However, its uses are far more than would
appear. JavaScript is a flexible language that can function as object
oriented, as well as procedural[@hid-sp18-525-java]. JavaScript has had
a storied past[@hid-sp18-525-java]. Because of the universal adoption of
JavaScript, it has a bright future. JavaScript is not confined to
rendering web content. As an object-oriented language, JavaScript has
unlimited potential as a programming platform[@hid-sp18-525-java].

JMP
===

JMP, commonly referred to as *Jump*, is an enterprise level statistical
analysis tool developed by SAS. The JMP software package is designed to
handle every data-involved stage from the initial acquisition of data to
the final presentation of findings. JMP was first released in 1989 and
has been designed ever since to provide a visual-centric interface where
the user can analyze, manipulate, and format data. JMP is capable of
complex analysis and machine learning techniques and can provide the
user the back-end software code generated to produce the visualized
results in a variety of common statistical languages or applications
such as Python, R, Matlab, SAS, and others [@hid-sp18-507-JMP9]. A
single JMP license is available for 1,785 USD [@hid-sp18-507-JMPSAS].
JMP Pro is an even more capable version of JMP with more advanced
analytics and predictive modeling with cross-validation--available for
14,900 USD [@hid-sp18-507-JMPPro].

Kafka
=====

Kafka is an open source distributed streaming platform that belongs to
the Apache Hadoop family. It is mainly used in data ingestion and
building real time data pipelines. Since Kafka is fault tolerant,
scalable and efficient it is in production today in thousands of
companies. Kafka also works as messaging system based on the
publisher-subscriber model where the publisher produces data and the
subscriber consumes the data. It can be compared to ActiveMQ in the
messaging space [@hid-sp18-517-ApacheKafka].The two main real-time
streaming applications of Kafka are, building data pipe-lines to
transport data between systems or applications, and building
applications that transform or react to stream of data. A few use cases
of Kafka are website activity tracking, messaging and log
aggregation [@hid-sp18-517-ApacheKafka].

Keras
=====



> ``Keras is a high-level neural networks API, written in Python and
> capable of running on top of TensorFlow, CNTK or
> Theano'' [@hid-sp18-401-keras].



Keras is used in deep learning community to build neural nets with easy
to use syntax. There are other technologies/software packages like
TensorFlow, Pytorch which are also used to build neural networks, but
the syntax and documentation is long and difficult for a beginner in
deep learning community. Keras kind of acts as a wrapper around
TensorFlow with easy to use syntax but not compromising on different
tools/options within building neural network.

Using Keras, we can build normal Dense ANNs, Convolutional Neural Nets,
Optimize our neural network by specifying loss function and optimization
method, do regularization of neural network with techniques such as
dropout, etc..

KNIME
=====

KNIME Analytics Platform [@hid-sp18-504-pred-knime] (otherwise known as
Konstanz Information Miner) is an open source platform focused on
including machine learning components, data mining, analytics, and
reporting; all executed through an interactive visual interface
displaying modules linked together through a pipeline workflow. These
modules are made up of data analytic routines which are comprised of
either R, Weka, or KNIME's own native routines. Since coding is optional
through KNIMEs graphical interface [@hid-sp18-504-knime], workflows can
be created to represent the individual steps in a dataflow, and allows
the user to execute these steps selectively and view their output
throughout different stages of their
workflow [@hid-sp18-504-pred-knime].

KNIME can allow for the use of additional extentions and plugins since
it's java based and built on Eclipse. In additional KNIME supports
common dbms as data sources [@hid-sp18-504-pred-knime]. Extensions
available to KNIME also include Big Data Extensions to utilize
computational resources from sources such as Apache Hadoop, Spark, and
the KNIME Server. KNIME also allows the ability to blend various data
sources, such as databases, images, text files, XML, JSON, networks, and
Hadoop data, to be included in the same pipeline workflow and provide
data and tool blending capabilities [@hid-sp18-504-knime].

Kubernetes
==========

Kubernetes is an open-source platform designed to automate deploying,
scaling, and operating application containers.

> ``The name Kubernetes originates from Greek, meaning helmsman or
> pilot, and is the root of governor and
> cybernetic'' [@hid-sp18-510-web-Kubernetes].

Kubernetes is capable of scheduling and running application containers
on both physical or virtual clusters. Kubernetes allows developers to
design applications that are agnostic of underlying architecture and
allows developers to design applications based on a container-centric
infrastructure rather than host-centric infrastructure, utilizing the
full advantages and benefits of
containers [@hid-sp18-510-med-Kubernetes]. Kubernetes via its building
blocks (primitives) provides mechanism for easily deploying,
maintaining, and scaling applications. Underlying architecture of
Kubernetes is meant to be loosely coupled and extensible so that it
can be used across a wide variety of
workloads [@hid-sp18-510-wiki-Kubernetes].

Kudu
====

Apache Kudu was designed to fit into the Hadoop ecosystem and it serves
as the storage layer that enables fast analytics on fast
data [@hid-sp18-517-ApacheKudu].

Kudu internally follows the columnar storage approach rather than
storing data in rows. This columnar approach helps in efficient encoding
and compression. Kudu serves as a good alternative to HDFS and Apache
HBase. It works best especially with use cases that require fast
analytics on fast data. It is also efficient and designed to take
advantage of next generation hardware and in-memory
processing [@hid-sp18-517-ApacheKudu].

Kylin
=====

Apache Kylin is an Online analytical processing or OLAP engine developed
specially for Big Data applications. Analysts around the world today use
SQL interfaces to query data from traditional database systems, Kylin
fits in well due to this as it provides SQL interface as well as OLAP
capability for Hadoop ecosystem which no other tool provides today.
Kylin is very efficient and can return billions of rows in minimum time.
It integrates well other BI tools such as Tableau. Kylin is rich in
features and provides, incremental refresh of cubes, web interface for
monitoring and management and ldap integration as well. Since Kylin was
specially built for Hadoop and big data applications, it depends on some
of the components such as HBase, Hive and HDFS. HBase is used to store
the data cube, map reduce does the cube refresh or partial refresh job
and HDFS stores intermediate files during cube building
process [@hid-sp18-517-ApacheKylin].

LightGBM
========


> ``A fast, distributed, high performance gradient boosting(GBDT,
> GBRT, GBM or MART) framework based on decision tree algorithms, used
> for ranking, classification and many other machine learning
> tasks. It is under the umbrella of the DMTK project of
> Microsoft'' [@hid-; @sp18-401-lightgbm].



LightGBM is used to implement gradient boosting algorithm in machine
learning with the aim to do so fastly, at the same time not compromising
on high performance. A couple of lines on gradient boosting is necessary
in understanding the context and relevance of LightGBM. Gradient
Boosting is a machine learning technique used to build both regression
and classification models. It is primarily used in building decision
trees. But building gradient boosting models on huge datasets(that
sometimes contain more than 500,000 observations) is computationally
onerous, not so efficient. LightGBM solves this problem and that is why
it is gaining popularity in Machine Learning community and people are
using this in their Kaggle machine learning projects.

Lingual
=======

Lingual is a free, open source project designed to build Big Data
applications on Apache Hadoop [@hid-sp18-516-www-drivenio-lingual]. All
dependencies are installed through Maven [@hid-sp18-516-www-wiki-maven],
thereby allowing the developers to focus on simply creating the
applications which makes this tool easy to
use [@hid-sp18-516-www-cascading]. Lingual leverages the platform
support of *Cascading* [@hid-sp18-516-www-wiki-cascading], a stand-alone
open source Java application framework used for building data-intensive,
enterprise Big Data applications and frameworks on
Hadoop [@hid-sp18-516-www-drivenio-lingual]. Whether on-premise or in
the cloud, Lingual is compatible with all major distributions of
Hadoop [@hid-sp18-516-www-drivenio-lingual]. Its ANSI-standard
SQL [@hid-sp18-516-www-wiki-sql] interface allows SQL users to utilize
their existing SQL skills to access data locked on the
Hadoop [@hid-sp18-516-www-wiki-hadoop] clusters, thereby allowing them
to create Big data applications instantly without undergoing any new
training [@hid-sp18-516-www-drivenio-lingual]. It also provides a
JDBC [@hid-sp18-516-www-wiki-jdbc] driver, that can be integrated with
many existing BI tools and application
servers [@hid-sp18-516-www-cascading]. Being ANSI-SQL compliant, Lingual
enables companies to query and export data from Hadoop directly into
traditional BI tools [@hid-sp18-516-www-cascading]. Lingual also
provides other features like a SQL shell which is an interactive SQL
command interface to interact with Hadoop and a Catalog to map the
database tables into Hadoop files and
resources [@hid-sp18-516-www-cascading]. The ability to migrate
workloads on to Hadoop either through Cascading applications or with the
use of legacy SQL statements, significantly reduces the computing
costs [@hid-sp18-516-www-cascading]. Due to it's ease of creating
applications using SQL, JDBC or traditional BI tools, it overcomes the
barriers of integrating Hadoop with the existing data management systems
enabling fast and simple Big Data application development on Apache
Hadoop [@hid-sp18-516-www-drivenio-lingual].

LinkedIn WhereHows
==================

LinkedIn WhereHows is a open source project carried out by the LinkedIn
Data team. The project works by creating a central repository and portal
for several important elements of big data systems: the processes,
people, and knowledge around the data [@hid-sp18-405-www-wherehows]. The
repository has captured the status of 50 thousand datasets, 14 thousand
comments, 35 million job executions and related lineage
information [@hid-sp18-405-www-wherehows]. WhereHows integrates with all
LinkedIn data processing environments and extracts metadata before
offering this piece of information through two interfaces: one is a web
application which facilitates functionalities such as navigation,
search, lineage visualization, annotation, discussion, and community
participation; the other is an API endpoint that empowers automation of
other data processes and applications [@hid-sp18-405-www-wherehows]. The
name WhereHows comes from the two fundamental questions related to the
data: *where* is the data, and *how* is it produced and
consumed [@hid-sp18-405-githubwiki-wherehows].

Linode
======

Linode is a cloud service provider. It provide compute, storage and
networking services on demand. Linode provide SSD Storage which is
Industry-leading native SSDs for optimal performance, 40Gbit Network
which is 40Gbps throughput with multiple levels of redundancy and Intel
E5 Processors which are The fastest processors in the cloud market.
Linode has three regions and 9 data centers across the world. These
regions and data centers help in data recovery and fault tolerance in
case of failures. Customers use Linode services on demand as
infrastructure for their websites, web services and applications. Linode
provide Two-Factor Authentication, IPv6 Support, Rescue Mode, DNS
Manager, Scaling, Cloning of the configuration, Supported Distributions
for various distribution images. The Linode easy interface Linode
Manager allows to deploy, boot, resize and clone in just a few clicks.
Linode offer different billing plans and customer can select the plan as
per their requirement [@hid-sp18-511-linode].

Logicalglue
===========

Logicalglue [@hid-sp18-413-logicalglue] is a predictive analystics
software that is mostly targeted towards insurance sector. It employs
fuzzy logic to generate rules which in turn derive accurate
predictions.Logical glue helps in identifying which data is predictive
and can be deployed in cloud. It has its API which an be integrated into
buisnnes's already existing softwares. Logcalglue employs machine
learning and genetic algorithms to generate outcomes. New and dynamic
data can be fed to the model generated and analysis can be run in
realtime. This model accurately works on complete lifecycle of a project
right from customers acquisition to closure.

Lumify
======

Lumify is an open source project developed at US national security
contractor Altamira, with key features indlucing big data fusion,
analysis, and visualization platform. The web-based interface provides
users with the ability to discover connections and explore relationships
in their data via various analytic options. These options include 2D and
3D graph visualizations, full-text faceted search, dynamic histograms,
interactive geographic maps, and collaborative workspaces shared in
real-time [@hid-sp18-405-www-lumify]. Lumify has an Open
Layers-compatible mapping system which can be utilized by tools like
Google Maps to display an interactive geospatial analysis of the data
set. Further, Lumify was integrated with SAP's high speed HANA in-memory
database and computation engine, which enables faster data retrieval and
calculation speed compared to the use of conventional database
system [@hid-sp18-405-linkedinblog-lumify]. By August 2017, Altamira's
Lumify is available through both the Microsoft Azure Marketplace and
Amazon AWS Marketplace. The tool can be immediately run on the Azure and
AWS cloud platforms, where customers have the option to purchase a
license from
Altamira [@hid-sp18-405-wwwaws-lumify][@hid-sp18-405-wwwazure-lumify].
These cloud technologies allow for greater flexibility and usability of
Lumify.

Apache Mahout
=============

Apache Mahout, an Apache Software Foundation project, is a distributed
Scala DSL based linear algebra framework designed to aid mathematicians,
statisticians and data scientists in implementing their own algorithms
quickly and efficiently [@hid-sp18-510-web-Mahout]. Initiated based on
Andrew Ng et al.'s paper

> ``Map-Reduce for Machine Learning on
> Multicore'' [@hid-sp18-510-ng-Mahout], it has evolved over time to
> cover other general machine-learning
> approaches [@hid-sp18-510-ibm-Mahout].


While Apache Spark is recommended back end, where core algorithms are
implemented on top of Apache Hadoop, Mahout is also extensible to other
back ends and standalone implementations [@hid-sp18-510-wiki-Mahout].
While number of algorithms supported by Apache Mahout is increasing, its
core algorithms primarily contain implementations for clustering,
classification, and Collaborative filtering [@hid-sp18-510-wiki-Mahout].

MapBox
======

MapBox is a geospatial data and location platform for multiple
application forms. The MapBox platform provides services and features
that can be used for storing geospatial data, cartographic map
production, and web-based map interface development tools. MapBox also
provides a software-as-a-service features that allow users to build
base-maps that can be used through various API tools in custom
applications that might require maps or geospatial data. Although, a
proprietary platform MapBox offers free services and access for limited
use [@hid-sp18-505-MapBox2018].

MariaDB
=======

MariaDB is an open source relational database. It has 12 million users
worldwide and one of the fastest growing databases in the
world [@hid-sp18-516-www-mariadb]. It powers applications at leading
companies like booking.com, Virgin Mobile, HP
etc. [@hid-sp18-516-www-mariadb]. It was created by the original
developers of MySQL [@hid-sp18-516-www-wiki-mysql] and Michael *Monty*
Widenius is the lead developer of MariaDB, also the founder of MySQL
AB [@hid-sp18-516-www-wiki-mariadb]. It was developed to be an enhanced,
drop-in replacement for MySQL [@hid-sp18-516-www-mariadb-foundation]. It
is available in Debian [@hid-sp18-516-www-debian-org] and
Ubuntu [@hid-sp18-516-www-wiki-ubuntu], and is now the default database
on many Linux [@hid-sp18-516-www-wiki-linux] distributions. It supports
a broad set of use cases by using different storage engines for
different use cases. These pluggable storage engines make MariaDB a
flexible, robust and scalable database
solution [@hid-sp18-516-www-mariadb-server]. Up until 10.1 version of
MariaDB, it used Percona's XtraDB as the default storage engine, but
from version 10.2, MariaDB uses InnoDB as the default storage
engine [@hid-sp18-516-www-wiki-xtradb]. Additional featured storage
engines in 10.2 version include *MyRocks* for better performance and
efficiency, and *Spider* for scaling out with distributed storage,
however these are under technical
preview [@hid-sp18-516-www-mariadb-server]. MariaDB intends to maintain
compatibility with MySQL [@hid-sp18-516-www-wiki-mariadb], but it also
aims at providing a rich ecosystem of storage engines, plugins and many
other tools to make it versatile for a wide variety of use
cases [@hid-sp18-516-www-mariadb-foundation]. It is used to turn data
into structured information for a wide variety of applications, ranging
from banking to websites. MariaDB also supports GIS and JSON features in
its latest versions [@hid-sp18-516-www-mariadb-foundation]. It is highly
secure, reliable and trusted by the world's leading brands. It is used
to support enterprise needs from OLTP to
analytics [@hid-sp18-516-www-mariadb].

Mesosphere
==========

Mesosphere is an Datacenter Operating Platform for data-intensive
applications. It is based on the Apache Mesos
kernel [@hid-sp18-404-Concepts2018]. It is a top-level cluster, manager,
container platform and operating system [@hid-sp18-404-Features2018].
Mesosphere performs resource consolidation, resource isolation, and
storage capabilities in a scalable system as it runs distributed
containerized software. It is agnostic to the infrastructure level, and
so can be run on either physical or virtual
machines [@hid-sp18-404-Architecture2018]. Mesosphere incorporates[^1]
with Amazon AWS and Microsoft Azure.

[^1]: Please can you elaborate?

Metron
======

Apache Metron is yet another open source project that serves as a big
data solution for CyberSecurity applications. It provides a framework to
ingest, process and also store data such as application logs, network
logs and so on so that can be analyzed by Information security teams so
that they can detect anomalies and respond to cyber threats. It provides
the storage solution in the form of security data lake or vault where
the logs can be stored long term on cost effective storage. In addition
to SIEM or Security information and event management features Metron
also provides packet replay utilities which can be of immense help for
the security analysts. Metron also support applying machine learning
algorithms on real time data that is being ingested through continuous
streams [@hid-sp18-517-metron-apache]. Apache Metron caters to
personnels at all levels in the CyberSecurity operations from CISO to
SOC analyst to security Data
Scientist [@hid-sp18-517-metron-hortonworks]. It provides a single view
of the risk to CISO or Chief Information Security Officer while
automatically performs that analytics so security investigator does not
have to spend time on finding co-relation in the data. Metron also has
the capability to create incidents and can integrate with the ITSM or
Information technology service management systems to provide
traceability [@hid-sp18-517-metron-hortonworks].

Apache Milagro
==============

As an increasing number of connected devices communicate data with each
other, data security must be taken into account. Apache Milagro is a
security framework, built for cloud based software and Internet of
Things (IoT) applications, that reauire to be
scalable [@hid-sp18-503-www-milagro]. Apache milagro is a pairing-based
cryptography system that distriburtes cryptographic operations among
various entities to provide a deeper level of security as compared to
monolithic certificate based systems used
today [@hid-sp18-503-www-milagro-docs].

Apache milagro avoids the probelms faced by certificate based systems
like Public Key Infrastructure (PKI) such as single point of failure, by
the use of distributed trust authorities (D-TAs), which hold a part of a
client's key each and are isolated from each other. The absence of a
central certificate provider means that anyone can be a D-TA the key
lifecycle is a part of ythe crypto system
itself [@hid-sp18-503-www-milagro-docs].

mLab
====

**citation is place wrong. check how to cite**

mLab is an efficient service to host MongoDB databases with fully
managed cloud database services. mLab has partnered with
platform-as-a-service providers and it also runs on cloud providers such
as Amazon, Google, and Microsoft Azure.

The main goal of mLab is to make software developers more productive.
This is achieved by providing a total package of mLab which includes
managed cloud database service featuring along with automated
provisioning and scaling of MongoDB Databases, backup, recovery,
monitoring, web-based management tools, and expert
support [@hid-sp18-406-mLab].

MonetDB
=======

MonetDB is an open-source, column oriented database system. MonetDB
mainly targets being a backend database for business oriented
applications. These applications create very large databases having
millions of rows and hundreds of columns and MonetDB supports
scalability for such systems. MonetDB comprises of three software
components namely the SQL front-end, tactical-optimizers and
abstract-machine kernel [@hid-sp18-416-www-monetdb-features]. In
contrast with MongoDB, the primary database model for MonetDB is a
Relational DBMS, but it also has additional document and key-value
stores. The most notable characteristic is that MonetDB is a
column-store in memory that is optimized for geo-spatial support and has
JSON document support [@hid-sp18-416-www-monetdb-mongodb-comparison].
MonetDB is developed by CWI in Netherlands. It targets Big Data and Deep
Learning applications and Online Analytical Processing (OLAP) and it is
widely used in the Netherlands as an analytical software for Customer
Relationship Management (CRM). It can also be considered as a valuable
contribution to the IT industry from the
Dutch [@hid-sp18-416-www-monetdb-dutch].

MongoDB
=======

MongoDB is document database that belongs to the NoSQL family of
databases. MongoDB is free and open-source, published under the GNU
Affero General Public License. It is known for its scalability and
flexibility. MongoDB stores data in flexible JSON-like documents.
MongoDB's HA features include automatic failover and data redundancy,
this is achieved using replica set, which is nothing but group of
MongoDB servers that maintain the same data. MongoDB supports sharding
by distributing the data across the cluster of
machines [@hid-sp18-517-MongoDB-intro].

Morpheus
========

Morpheus provides cloud and hybrid cloud solutions to improve the
efficiency of continuous development and integration life cycles by
focusing on devops and developer perspectives. The analytics offering of
Morpheus focuses on optimizing resource allocations on VM environments,
such as containers and public clouds, that distributes over multiple
clouds with platform independent discovery services. The competitive
edge that the Morpheus has over other VM boost up package vendors is the
Analytics' ability to visualize platform wide resource consumptions. The
Analytics pack uses either built in cloud APIs or specific agents to
gather resource consumption information across all the platforms and
does the brokerage of incoming requests to minimize the incurring
resource consumption costs [@hid-sp18-416-www-morpheus-product-guide].

Morpheus governance tool provides the ability to index, categorize and
store enterprise artifacts and provide life cycle management of the
artifacts. The integrated Role Based Access Control (RBAC) makes sure
that the artifacts are accessible only to the authorized people and
provides them with the ability to view certain aspects of the artifacts.
The artifacts could be anything that comes under the hood of SOA
governance [@hid-sp18-416-www-soa-governance-wikipedia] and they are
managed by the policies defined and uploaded by the authorized roles in
the system.

Microsoft Visual Studio
=======================

Microsoft Visual Studio (MVS), community edition, is an open source


> ``integrated development interface IDE applicable for the
> development of computer programs, websites, web services, web and
> mobile apps'' [@hid-sp18-415-wikipedia-org].

While the interface consists of
some built-in tools such as code editor, code profiler and integrated
debugger, it also supports plugins dependending on requirements of
visual designer. Javascript, C++, XML, CSS, `.NET` are among some of the
built -in languages for visual studio. But it supports quite a big
number, that is 36 different, types of languages. Python, Ruby, Node.js
and M are some of the languages available by plugins. Multiple instances
with their own set of packages and specific App-id, can be run at the
same time. MVS connects to windows AZURE making it portable for
developers [@hid-sp18-415-wikipedia-org].

neo4j
=====

Neo4j is a graph database developed by Neo4j, Inc. It is an
ACID-compliant transactional database with graph storage and processing
which in turn help data scientists to gain new perspectives on data.
Neo4j's Graph Platform is specifically optimized to map, analyze, store
and traverse networks of connected data to reveal invisible contexts and
hidden relationships to help enterprises tackle challenges such as
Artificial Intelligence and Machine Learning, Fraud Detection, Master
Data Management [@hid-sp18-513-neo4j]. Neo4j is one of the popular Graph
Databases and Cypher Query Language (CQL). Neo4j is written in Java
Language. Neo4j provides a flexible simple and yet powerful data model,
which can be easily changed according to the applications and
industries. Neo4j provides results based on real-time data and it is
highly available for large enterprise real-time applications and also it
does not require complex joins to retrieve the data. Neo4j can connect
to REST API to work with programming languages such as Java, Spring,
Scala etc.

Neptune
=======

Neptune is a graph database service that was announced at the AWS
Re:INVENT conference in November of 2017 [@hid-sp18-419-www-tc_neptune].
Graph databases are NoSQL databases that used graph structures to
organize data [@hid-sp18-419-www-tp-graph-db]. They are commonly used
for social networking applications, but can be used for recommendation
engines, logistics, and other applications. Amazon offers Neptune as a
fully managed product. It supports Apache TinkerPop Gremlin and SPARQL
open source graph APIs. One can choose Gremlin or the W3C standard
Resource Description Framework model [@hid-sp18-419-www-aws-neptune].

Netflix
=======

Netflix offers a big-data platform that has both data and services that
can be used to access data as well as processing tools (algorithms) that
can be used to analyze data. For example, Netflix's platform has tools
that can be used to detect outliers in large data
sets [@hid-sp18-505-Wong2015]. Netflix's data sets can be consumed and
analyzed with their platform analytical tools or the tools can be used
independently on other non-Netflix data
sets [@hid-sp18-505-Netflix2018].

Apache NiFi
===========

Apache NiFi, which is short for NiagaraFiles, is a open source software
project from the Apache Software Foundation designed to automate the
flow of data between software systems [@hid-sp18-405-wiki-nifi]. Based
on the *NiagaraFiles* software previously developed by the NSA, Apache
NiFi is part of its technology transfer program in
2014 [@hid-sp18-405-wiki-nifi]. NiFi executes within a Java Virtual
Machine with the following primary components: Web Server, Flow
Controller, Extensions, FlowFile Repository, Content Repository and
Provenance Repository. Since NiFi's fundamental design concepts are
closely related to Flow Based Programming (FBP), some of the above
components can be mapped closely to FBP terms. For example, Flow
Controller and FlowFile can be related to Scheduler and Information
Packet in FBP terms
respectively [@hid-sp18-405-wwwoverview-nifi] [@hid-sp18-405-wikifbp-nifi].
Apache NiFi supports scalable directed graphs of data routing,
transformation, and system mediation logic, aiming at leveraging the
capabilities of the underlying host system on which it is operating,
especially with regard to CPU and disk [@hid-sp18-405-wwwoverview-nifi].
Some of the high-level capabilities and objectives of Apache NiFi
include: Web-based user interface, Highly configurable, Data Provenance,
Designed for extension and Secure [@hid-sp18-405-www-nifi].

Node.js
=======

Node.js is a JavaScript runtime that provides a scalable option for
net-work applications. Node.js requires less system resources to perform
thanis common [@hid-sp18-525-nodejs]. Using less system resources does
allowNode.js to scale. This is ideal for large web applications, such as
libraries[@hid-sp18-525-nodejs]. Generally, Node.js creates server-side
applications [@hid-sp18-525-nodejs]. JavaScript language is used by
Node.js, and the two often compliment each other, on opposite sides of a
transaction [@hid-sp18-525-nodejs].

ODBC
====

Odbc is an R package which allows connectivity to commercial databases,
such as Oracle, and MS SQL Server [@hid-sp18-403-R-odbc]. It also
permits connection to other databases with odbc (Open Database
Connectivity) hooks, however other packages simplify these
connections [@hid-sp18-403-R-dbi]. Because *odbc* is actaully a thin
wrapper around the c++ ODBC bindings, it is faster than any other common
database connecter [@hid-sp18-403-rstudio-odbc].

OneDrive
========

Microsoft's OneDrive is a data storage service
 [@hid-sp18-601-www-odrive-website]. It allows accessibility to files
stored in any computer connected to the web. OneDrive has sharing
functions and integration with Microsoft Office. It's intended audience
is both personal users and companies.

Oozie
=====

Apache Oozie is a workflow scheduler to manage Hadoop jobs. Workflows
are defined as a collection of control flow and action nodes in a
directed acyclic graph. Oozie jobs can either be triggered based on the
frequency or based on when the data becomes available. Oozie is
integrated with the Hadoop stack supporting several types of Hadoop jobs
such as map-reduce, Pig, Hive, Sqoop, Java programs and shell scripts.
Oozie is an Open Source Java Web-Application available under Apache
license 2.0. Oozie is a scalable, reliable and extensible system. It is
responsible for triggering the workflow actions, which in turn uses the
Hadoop execution engine to actually execute the task. Hence,Oozie is
able to leverage the existing Hadoop machinery for load balancing,
fail-over, etc [@hid-sp18-513-oozie].

Openchain
=========

Openchain is a blockchain ledger technology designed to be built in
seconds and deployed on an enterprise scale for the purposes of managing
asset transactions. The Openchain technology uses a distributed
client-server architecture rather than the slower peer-to-peer proof of
work concept originally adopted by early blockchain technologies, most
notably: Bitcoin. Openchain can serve as a stand alone ledger or can be
scaled as a side-ledger to existing blockchain
platforms [@hid-sp18-507-Openchain]. Openchain's parent company,
Coinprism, has proven technology projects adopted by multiple
large-scale companies like the Open Asset technology used by
NASDAQ [@hid-sp18-507-BitcoinNews]. Openchain is capable of handling any
type of digital asset such as gift cards, legal documents, contracts,
coins or tokens, or client-specific asset data and this is done through
the enacting company serving as its own administrator by creating and
enforcing it's own trust-approver validation
hierarchy [@hid-sp18-507-Coindesk].

OpenDaylight
============

OpenDaylight is an open source Software Defined Networks (SDN)
controller[@hid-sp18-419-www-opendaylight]. SDN separates network
control logic from physical networking equipment. The result is that
networking equipment is programmable like other computing platforms. SDN
facilitates Network Functions Virtualization (NFV), allowing virtual
network services (switching, virtualized appliances, and virtualized
applications) to be deployed without having to deploy specialized
physical devices[@hid-sp18-419-www-cio-sdn-nfv]. The OpenDaylight
project was founded by a group of large tech companies, including Cisco,
Citrix, Ericsson, HP, IBM, Microsoft, NEC, Red Hat, and VMware.
Microsoft and VMware have since left the
project[@hid-sp18-419-www-sdx-odl].

OpenNebula
==========

OpenNebula is a useful opensource that enables seamless management and
control of different cloud systems. The tools can be used for a cloud
implementations to virtualize data centers and also to obtain solution
for cloud infrastructure. Opennebula can be adopted on top of an
existing cloud setup. OpenNebula project started on 2005 and currently
the product is available as an open-source under Apache license.

> ``The toolkit includes features for integration, management,
> scalability, security and accounting. It also claims
> standardization, interoperability and portability, providing cloud
> users and administrators with a choice of several cloud interfaces
> (Amazon EC2 Query, OGF Open Cloud Computing Interface and vCloud)
> and hypervisors (Xen, KVM and VMware), and can accommodate multiple
> hardware and software combinations in a data
> center'' [@hid-sp18-417-opennebula-wiki].



![OpenNebula Deployment
Model [@hid-sp18-417-opennebula-deployment][]{label="F:opennebula"}](images/hid-sp18-417-opennebula.png){width="\textwidth"}

The OpenNebula deployment needs (1) A client node (2) A hypervisor (3) A
data storage system (4) Physical network. The deployment model is
depicted in [\[F:opennebula\]](#F:opennebula){reference-type="ref"
reference="F:opennebula"}. Due to its long steady growth, the tool is
being used by customers in various industries ranging from telecom to
education. The wide range of customer base is helpful in providing a
solid support system to the new and existing users as well as continuous
feedback becomes vital in the research and growth of the project.

Open Refine
===========

OpenRefine is a useful open source that is used for data visualization
and analysis. Its predominantly used for cleaning messy data and
transformation of data from one format to other for ease of clarity.
OpenRefine was formerly known as GoogleRefine. The tool is also used for
fetching data from websites and data organization. It can import data
from CSV, TSV, Excel, XML etc. It is written in Java. It works with data
in tabular format like in relational data. The tool has a user interface
that is available to be downloaded.

> ``Once you get used to which commands do what, this is a powerful
> tool for data manipulation and analysis that strikes a good balance
> between functionality and ease of use'' [@hid-sp18-417-openrefine].



openVZ
======

OpenVZ is a container-based virtualization for Linux [@www-openvz].
OpenVZ is mainly composed of three parts: the kernel, an set of tools
and operating system templates.

OpenVZ applies to many places, including server consolidation, hosting,
development and testing, security and education [@www-openvz-intro]. If
you have a lot of Linux servers that are not being fully utilized,
OpenVZ can be used to integrate them into a few (or possibly one)
physical machines. However, OpenVZ is completely command-oriented and
currently does not include any GUI-based applications. It may not be
suitable for those who are afraid of a shell prompt.

Oracle Big Data Cloud Service
=============================

Oracle Big Data Cloud Service is an automated service that provides a
high-powered environment tailor-made for advancing businesses'
analytical capabilities. With automated lifecycle management and
one-click security, Big Data Cloud Service is designed to optimally and
securely run a wide variety of big data workloads and technologies while
simplifying operations [@hid-sp18-501-OracleCloud] Oracle Big Data Cloud
Machine use connectors to seamlessly integrate with other Oracle
services such as Oracle R Advanced Analytics for Hadoop (this enables
the development of models using R that run in parallel on Hadoop, and
accelerated using Spark),Oracle Data Integrator (this enables the
transformation and enrichment of data within an enterprise big data
clusters), Oracle SQL Connector for Hadoop and Oracle Loader for Hadoop
(this allows the integration with data in online or offline modes), Big
Data Spatial and Graph (this enables processing and enriching geospatial
data), and Oracle R Advanced Analytics for Hadoop (this enables building
models using R that run in parallel on Hadoop, and accelerated using
Spark) [@hid-sp18-501-OracleCloud]

Oracle Coherence - DataGrid
===========================

Oracle Coherence is an In-Memory Data Grid, data management platform for
application objects that are shared across one or multiple distributed
servers that requires low response time, very high throughput,
predictable scalability, high availability and
reliability [@hid-sp18-514-OracleCoherence].

Initially this framework was developed by Tangosol. The Tangosol, was
acquired by Oracle Corporation in 2007 [@hid-sp18-514-coherencewiki] and
named that framework as Oracle Coherence.

Oracle coherence data grid platform used for computational intensive,
stateful middtle-tier applications that runs in a distributed platform.
Coherence is directed to run application layer, and is often run
in-memory with application itself. Oracle coherence Data Grid is a
system of composed of multiple servers that work to manage information
and related operations. Coherence provides the ideal infrastructure for
building Data Grid services, and the client and server-based
applications that use a Data Grid. At a basic level, Coherence can
manage an huge amount of data across a large number of servers in a
grid; it can provide minimal or low latency access for that data; it
supports parallel queries to access the data with high throughput.
Coherence also supports integration with database and EIS systems that
act as the system of record for that data. Additionally, Coherence
provides other services that are ideal for building more effective data
grids [@hid-sp18-514-OracleCoherence].

This framework comes by default with Oracle WebLogic 12c server. Oracle
also provides standalone coherence server, which can be used in any Big
Data environment to store any database data, inflight or any dataset to
be processed by MapReduce or any other Hadoop component. Cache servers
can be configured in the clusters. This framework can be used in the Big
Data environment without HDFS for in-memory distributed data storage.
There are DOT NET, JAVA, C++ and other API's available along with REST
service to access Coherence cache [@hid-sp18-514-OracleCoherence].
Oracle coherence can be integrated from Spring based distributed
applications as well [@hid-sp18-514-CoherenceSpringInt].

Orange
======

Orange [@hid-sp18-504-orange] is a data mining, visualization, and
machine learning toolkit based on Python 3. This software is developed
in such a way as to allow practitioners to have varying degrees of
technical background (including complete novices) and still utilize the
product's capabilities [@hid-sp18-504-orange], Orange has an interactive
data visualization interface which allows for a simpler approach to
perform complex data mining and machine learning practices and to derive
insightful knowledge. Orange also provides a visual programming
component in the form of widgets to perform qualitative analysis through
a visualized workflow map. Depending on a widget's function, it is then
grouped into a class, encouraging the use of various widgets in a
typical given workflow. These widget visualizations also assist in the
communication of analytic processes between domain experts and data
scientists, which has encouraged the use of this product in academic and
research settings [@hid-sp18-504-orange]; particularly with domains
involving 'biomedicine, bioinformatics, \[and\] genomic
research' [@hid-sp18-504-wiki-orange].

This open source toolkit's latest version (3+) uses various python
libraries for computation, while utilizing the Qt framework for the
visualization end [@hid-sp18-504-wiki-orange]. The available Python
classes and methods include classes based on data models, preprocessing,
classification, regression, clustering, distance, evaluation, and
projection. The classification and regression classes offer the largest
number of available methods, such as random forests, Naive Bayes, neural
networks, and k-nearest neighbors [@hid-sp18-504-orange]. These classes
can either be used directly as a Python library, or used in Orange's
widget sets. It is also possible to create custom widgets and include
them in an Orange workflow [@hid-sp18-504-wiki-orange].

OrientDB
========



> ``OrientDB is the open source NoSQL multi-model database that works with
> graph databases'' [@hid-sp18-520-OrientDB].

Along with this it can be set
up as document database and Object-Oriented database.

> ``Graph databases are NoSQL databases which use the graph data model
> comprised of vertices, which is an entity such as a person, place,
> object or relevant piece of data and edges, which represent the
> relationship between two nodes. Graph databases are particularly
> helpful because they highlight the links and relationships between
> relevant data similarly to how we do so ourselves. Even though graph
> databases are awesome, they are not enough on their own. Advanced
> second-generation NoSQL products like OrientDB are the future. The
> modern multi-model database provides more functionality and
> flexibility while being powerful enough to replace traditional
> DBMSs'' [@hid-sp18-520-OrientDB-graph].

Graph databases are usefull for developing application related to
social networking and establish relationships between objects with
respect to there properties. It maintains class relation using
documents and links in document model.

Owncloud
========

OwnCloud has made its significant impact in providing client-server
software services for creating file hosting services and also to use
them. Even though most of the functionalities are comparable to Dropbox,
OwnCloud distinguishes itself by presenting as an open-source and free
server edition. OwnCloud is easily available which makes any user easy
to install and operate it.

OwnCloud is putting its best efforts to make it work like Google Drive,
providing features such as online document editing, and contact
synchronization [@hid-sp18-406-Owncloud].

Paxata
======

One of the most important and time consuming job of data scientist is to
clean and prepare data from multiple sources in a format that it can be
analyzed. Paxata [@hid-sp18-413-paxata] semi automates the process by
using its own algorithms. It uses machine learning and text mining
combined with its libraries to efficiently clean data. Paxata provides a
spreadsheet like interface where inconsistencies are color coded and
instructions are provided to clean up data. Paxata visualizes the data
in form of graphs and creates associations between various data objects
and uses them to resolve data quality issues. This data can then be
consumed by visualizing softwares like tableau. With this approach
Paxata gives anyone ability to run data analytics on big data sets in a
short amount of time.

Pig
===

Pig is a part of the Apache Hadoop ecosystem consisting of a scripting
language called Pig Latin and a compiler that produces Map-Reduce
programs. It was initially developed in 2006 at Yahoo! and taken over by
Apache in 2007[@hid-sp18-419-die2015datascience]. Pig Latin allows
developers to code multiple interrelated data transformations as data
flow sequences, with the goal fo making the code readable and easy to
maintain. Pig optimized Pig Latin automatically and users can extend the
language with purpose-written functions[@hid-sp18-419-www-pig]. There is
some overlap in functionality between Pig and Hive, an SQL-like language
that is also a part of the Apache Hadoop ecosystem. Pig tends to be
favored by programmers and researchers, whereas Hive is preferred by
data analysts[@hid-sp18-419-www-dezyre-pig].

Pivotal
=======

Pivotal is a developer of cloud-native applications, containers, and
tools for DevOps. The primary cloud computing tool is the Pivotal Cloud
Foundry (PCF) platform [@hid-sp18-404-Pivotal2017]. PCF is a commercial
platform built the built on the open-source Cloud Foundry platform. The
architecture is container-based and offers an option to web developers
in the shift to cloud-native software
development [@hid-sp18-404-Darrow2016].

Pivotal Rabbit MQ
=================

Pivotal RabbitMQ is a messaging broker platform used by various consumer
applications like financial market data, system monitoring, business
integration and various social, mobile, big data and cloud
apps [@hid-sp18-415-www-pivotal]. Its protocol based nature lets it
connect across various other software components making it an ideal
messaging platform for cloud computing. It is efficient, scalable,
portable across most operating systems [@hid-sp18-415-www-pivotal]. Its
small disk and memory footprint makes it lightweight for use by
developers. It has simple API and drivers are available for multiple
languages like Python, PHp, Java. It also supports large scale messaging
and routing according to topic and content [@hid-sp18-415-www-pivotal].
It is one of the new trending tools for many web applications.

Pool
====

Pool is a connection manager for R, which interfaces with the DBI family
of connections [@hid-sp18-403-R-dbi]. The advantage of using pool as a
connection manager is that it automatically maintains a connection as
open, or re-opens closed ones if needed. This helps ensure that for
long-running, interactive contexts, such as data-visualization
dashboards, access is maintained to data [@hid-sp18-403-R-pool].
Importantly, pool also closes connections at the end of session,
ensuring that there are no dangling operations.

Apache PredictionIO
===================

Apache PredictionIO is an open source machine learning stack for
building, evaluating and deploying engines with machine learning
algorithms. An open source Machine Learning Server built on top of an
open source stack allows developers and data scientists to create
predictive engines for any machine learning task. It allows developers
to quickly build and deploy an engine as a web service and unify data
from multiple platforms in batch or in real-time for comprehensive
predictive analytics. It supports machine learning and data processing
libraries such as Spark MLLib and OpenNLP [@hid-sp18-510-web-PredIO].

Presto
======

Presto is a SQL query engine developed specially for interactive
analytics. It focuses on large commercial data warehouses with capacity
of gigabytes to petabytes. It is open source and used for distributed
systems. It is compatible with relational as well as NoSQL of data
sources such as Cassandra and Hive [@hid-sp18-502-Presto].

It is being used by big organizations like Facebook to run interactive
queries against their large data warehouses. The main advantage of using
Presto is that it allows to perform analytics on data from different
data sources using single query. This allows data to be combined across
organizations without extra overhead of separate queries for each data
source [@hid-sp18-502-Presto].

PubNub
======

PubNub is globally recognized as a cloud Data Stream Network and a
real-time infrastructure as a service platform founded by Stephen Blum
and Todd Greene in 2010 [@hid-sp18-409-www-pubnub]. PubNub provides
cloud-based services and products to build real-time web, mobile, and
Internet of Things (IoT)
applications [@hid-sp18-409-www-pubnub-wikipedia]. PubNub's main product
is PubNub push messaging API which is currently being utilized by iOS,
Android, Nodejs, and many other applications. This push messaging API is
built on PubNub replicated global data streaming network at 14 data
centers distributed among the entire
world [@hid-sp18-409-www-pubnub-wikipedia]. PubNub is also being use as
IoT device control platform to manage bidirectional communication,
cross-device and platform messaging, monitor device metadata, act on
data instantly, intelligent data routing, device provisioning and remote
firmware upgrades, enterprise grade security, and minimal battery and
bandwidth drain in home automation, wearables, connected car, sensor
deployments, delivery and fulfillment, manufacturing and industrial,
smart cities, and beacons and eTail [@hid-sp18-409-www-pubnub].

Pulsar
======

Apache Pulsar which is also an open source project of the Apache
foundation was originally developed by Yahoo. It is a messaging solution
that enables high performance server to server messaging. Similar to
Kafka Pulsar is based on publisher-subscriber model. Some of the key
features of Pulsar include low latency in publishing, guaranteed message
delivery, scalability and so on. The publish-subscribe pattern involves
components such as producers, consumers, topics and subscription
wherein; topics are channels that transmit data from source to target or
in other words from producers to consumers, producers job is to publish
a message and a consumer process is the one that receives the message.
Subscriptions are set of rules that determine how messages flow in the
system from producers to consumers and have three modes namely
exclusive, failover and shared [@hid-sp18-517-pulsar-apache]. Pulsar can
be installed and run in standalone mode or standalone cluster, it can
also be run multiple clusters. Pulsar installation involves installing
an instance which can be installed across clusters when installed in
multi-cluster environment. In this setup clusters can be running within
the data center or can span across multiple data centers. Pulsar also
support geo-replication so the clusters can replicate with each other.
Pulsar can also be installed on Kubernetes on Google Kubernetes or
AWS [@hid-sp18-517-pulsar-apache].

Puppet
======

Puppet [@hid-sp18-413-puppet] is a open source software configuration
and automation tool. It is written in C++ and Clojure. Puppet is a
declarative language and uses domain specific language for
configuration. Puppet uses facter to gather information about the system
and user defines the desired state. Puppet does not use sequential
programming where order of execution is key but uses graphical
representation to represent the order of execution. Resources are
defined in manifests written in Domain specific language. These
manifests are complied into catalogue on puppet master and supplied to
puppet clients. These catalogues are only applied if actual and desired
states are different.

> ``Kubernetes [@hid-sp18-413-Kubernetes] is new cluster manager from
> google'' and puppet makes it easy to manage the kubernetes
> resources.

Puppet is declarative, modular, has code testing
features and therefore managing kubernetes with it is easier.

Rackspace
=========

Rackspace is a cloud computing company which administrates cloud system
for their business partners and further helping them to concentrate on
managing the business growth of their partners. Rackspace differentiates
itself from other companies by stating that the cloud system alone which
is provided by other companies are not sufficient to operate the
infrastructure efficiently.

Rackspace proudly states that it takes several innovative and cognitive
engineering skills to develop and manage the infrastructure and also
concentrating on tools and applications which are necessary to
administrate. BY providing all such toolwith updated data engines and
e-commerce platforms, Rackspace claims that it will manage cloud and
infrastructure of their business partners in a much different and
efficient way [@hid-sp18-406-Rackspace].

RapidMiner
==========

RapidMiner is a data science software platform that provides an
integrated environment for data preparation, machine learning and model
deployment into production. It provide the facility to connect to
various sources of different format and different scale to collect the
data, data exploration to discover the pattern in the data, identity the
issues, blending to find the relevant data for the modeling, clean the
data for advanced algorithms. Once the data is prepared models are built
using a nice workflow designer tool. It provides Classification,
regression and clustering techniques. Validation is performed for cross
validation and split validation after the model development for the
accuracy of the model. On the successful validation of the model it is
deployed into production with governance and security. It is Open and
extensible and provide native R and Python support. The source code is
available under an aGPL license. The platform provides an easy drag and
drop environment for easy and fast data science related
operations [@hid-sp18-511-rapidminer].

RightScale Cloud Management
===========================

RightScale Cloud Management is basically a platform which acts as a
console to manage different clouds from one environment. Some of its
features are automatic recovery protocols when it detects an escalation,
disaster recovery architecture, automatic scaling and scripting.

> ``This platform facilitates ways to deploy and manage
> business-critical applications across public, private and hybrid
> clouds and provides configuration, monitoring, automation, and
> governance of cloud computing infrastructure and applications''
>  [@hid-sp18-418-RightScale-Cloud-Management-article].



Ripple Transaction Protocol
===========================

Ripple Transaction Protocol is an open-source protocol that allows
transfer of anything of value (usually payments) on the internet.



> ``The Ripple network enables secure, instant and nearly free global
> financial transactions of any size with no chargebacks''
> [@hid-sp18-506-RippleNetwork].



> ``Ripple provides one frictionless experience to send money globally
> using the power of blockchain'' [@hid-sp18-506-GlobalPayment].



There are 3 problems that ripple are trying to solve in the current
payment systems available now high fees, charges for currency exchanges
and processing delays.

Banks today built their own system for their customers that dont easily
interact with each other. The Ripple network is designed to connect
different payment systems together.

With ripple the transaction fees are very minimal and comparative less
than what for example Visa charges. And there are no foreign exnchanges
loses since the the currency is never converted to any other currency
from the source to the destination. The transfer is also completed
within minutes compared to the usual 3-business-days waiting period when
sending money thru the traditional means.

Amazon SageMaker
================

Amazon SageMaker [@hid-sp18-521-Sagemaker] can help users be able to
develop machine learning models in a more streamlined way. It includes
functionality that allows a user to speed up the process of building,
training and deploying their models. To help simplify the building of ML
models, Jupyter notebooks are included which will allow the user to make
it more convenient to explore and visualize training data stored in S3.
The 12 most common machine learning algorithms have also come
pre-installed and configured, as well as the frameworks Tensorflow and
MXNet, with the option of also using your own specific framework. Using
SageMaker to train your models allows you to scale up underlying
infrastructure as needed up based on your storage needs. Automatic
tuning of models is also included. SageMaker also takes advantage of EC2
in order to create highly available and elastic clusters where you can
deploy your model. A/B testing capabilities are built into the product
as well.

Sales Cloud
===========

Sales Cloud is basically a part of the sales module of SalesForce. It is
a platform which integrates the customer data together and it
incorporates marketing, sales, customer service and business analytics
functionalities. One of Sales Cloud's most important feature sets is


> ``sales performance management software. The sales performance
> management covers incentives, commissions, quotas, regions, goal
> setting, training and performance evaluation''
>  [@hid-sp18-418-Sales-Cloud-features].

It also has features which enable us to construct dashboards and
perform real time forecasting which are useful for data analytics. It
has a mobile application of the same thereby providing more ease of
access and portability.

Apache Samoa
============

Apache Samoa, which stands for Scalable Advanced Massive Online
Analysis, is a distributed streaming machine learning framework that
contains a programming abstraction for distributed streaming machine
learning algorithms [@hid-sp18-405-www-samoa].

> ``It features a pluggable architecture that allows it to run on
> several distributed stream processing engines such as Storm, S4, and
> Samza'' [@hid-sp18-405-www-samoa].

Real time analytics can be utilized by
tools like Samoa and allow organizations to react in a timely manner
when problems appear or to detect new trends helping to improve their
performance by obtain useful knowledge from what is happening
now [@hid-sp18-405-bif2015mining-samoa]. Apache Samoa users can develop
distributed streaming ML algorithms once and execute them on multiple
DSPEs (distributed stream processing
engine) [@hid-sp18-405-mor2015samoa-samoa]. In addition, users could
also add new platforms by using the API provided, therefore, the Samoa
project is divided into two different parts, namely: Samoa-API and
Samoa-Platform. By using Samoa-API, developers could develop for Samoa
without worrying about which DSPE is going to be
used [@hid-sp18-405-blog-samoa]. Samoa, written in Java, is open source
under the Apache Software License version 2.0.

Scikit-learn
============

A Google Summer of Code project, scikit-learn project is a
machine-learning library. Written in Python, it is designed to be simple
and efficient, accessible to non-experts, and reusable in various
contexts. Its goal is to provide a set of common algorithms to Python
users through a consistent interface.

This package focuses on bringing m achine learning to non-specialists
using a general-purpose high-level language that is easy tofollow.


> ``Emphasis is put on ease of use, performance, documentation, and
> API consistency. It has minimal dependencies and is distributed
> under the simplified BSD license, encouraging its use in both
> academic and commercial settings. Source code, binaries, and
> documentation can be downloaded from
> http://scikit-learn.sourceforge.net''  [@hid-sp18-506-Scikit-learn].



Although the library is easy to use its sophisticationand power to
analyze big data is never lost. This library has earned respect not only
in the academe but also in the industry. There are increasing demand in
the job market for scientist and engineers who specialize in this
library. The author himself has personally used this library and can
attest to its functionality. It has simplified a lot of usage of
algorithms but it still is a powerful tool.

Scribe
======

Scribe is a server design, originally developed and maintained by
Facebook in 2008, that serves as an aggregation service for streaming
log data. The Scribe server is deployed within each node of a network
and sends the aggregated log data to a central server for analysis. The
data is interpreted by the Scribe servers via a two-string input by a
client: the category or direction, and the message itself. Scribe has
been deployed on thousands of servers on a single network and is robust
to network errors and failures [@hid-sp18-507-FBScribe]. Scribe was
developed by Facebook to prevent their highly distributed server
architecture being locked into a third party's network topology. The
purpose of Scribe is to solve two major needs of a distributed data
system: capturing events, changes, and errors on the system, and
maintaining the collected and aggregated data through issues common to
decentralized networks such as connection breaks, server downtime, and
scalability [@hid-sp18-507-ScribeNote]. The logging-functionality of
Scribe is now maintained and improved upon through the open source
community. Scribe is available via the Apache License v.2.

SETI $@$ Home
=============

After funding was cut SETI lauched SETI$@$Home, a public volunteer
computer via the internet. Using this software users donate idle CPU
time for SETI to do calculations [@hid-sp18-601-www-sathome-about]. It
was released in 1999 and one of its goals was to prove the viability of
volunteer computing. This goal has succeded completly. SETI$@$Home was
inspiration for several similar projects
 [@hid-sp18-601-www-boinc-projects], one of each is the
LHC$@$home [@hid-sp18-601-www-lhc-at-home-history].

ShareLatex
==========

ShareLatex is a cloud service accesable via a website. It allows real
time collaboration and compilation of
LaTeX documents [@hid-sp18-601-www-slatex-documentation] as well as the
storage of them.

ShareLatex has ease of use features, such as having several packages
included in it server side. It provides several templates for
presentations, papers among others. ShareLatex provides paid accounts as
well as the free one. With the paid account you can see a history of the
document and sinc the files to github or
DropBox [@hid-sp18-601-www-slatex-plans].

Share Point
===========

Sharepoint is a web-based document management and storage system
platform that integrates with Microsoft
Office [@hid-sp18-601-www-spoint-website]. It was launched in 2001 by
Microsoft, now it has different editions with different functions.

Sharepoint allows for a few different applications. It can be used as a
real time collaboration tool for Microsoft Office documents. Also
providing a file history and keeping records. Sharepoint also provides a
Social Network  [@hid-sp18-601-www-spoint-new-sharepoint], helping to
centralize project management. It is integrated with Microsoft's
OneDrive, allowing for mobility.

Skytap
======

Skytap is a cloud platform that provides Environment-as-a-Service
(Eaas). The company enables businesses to implement their IT without
having to trouble themselves about the infrastructure needs of their
products/services. One of the high lights of Skytap is that in addition
to providing the cutting edge technologies in their environment, they
cater to businesses that require traditional application or
technologies. Beyond which they enable the customer businesses to
modernize.

> ``True self-service, on-demand resources enable you to create your
> own software-defined datacenter and networks with environments on
> demand that work in the cloud just like in your
> datacenter.'' [@hid-sp18-411-skytap]

Apache Solr
===========

Apache Solr is an open-source search platform used to build search
applications. It leverages the power of Apache
Lucene [@hid-sp18-516-www-wiki-lucene], which is a Java-based search
library providing the core operations required by any search application
like Indexing and Searching [@hid-sp18-516-www-tutorialspoint-solr].
Apache Lucene and Apache Solr were merged together in 2010 and since
then, produced by the Apache Software Foundation development team. It
has an active development community and regular releases. Solr has
RESTful API's like HTTP/XML [@hid-sp18-516-www-wiki-xml] or
JSON [@hid-sp18-516-www-wiki-json] to communicate with it that can be
used from most popular programming
languages [@hid-sp18-516-www-wiki-solr]. It has all capabilities
required for a full-text search server such as tokens, spell check,
wildcard, phrases and auto-complete. It is fast, highly scalable,
reliable, fault-tolerant and enterprise-ready and can be deployed in any
kind of systems such as standalone, distributed or
cloud [@hid-sp18-516-www-tutorialspoint-solr]. Other major features
include hit highlighting, built-in security, distributed search through
sharding, database integration, faceted search, rich document (e.g.,
Word, PDF) handling [@hid-sp18-516-www-wiki-solr]. As Hadoop can handle
large amounts of data, Solr can be used with
Hadoop [@hid-sp18-516-www-wiki-hadoop] to find the required information
from a large source. Apart from search, Solr also has
NoSQL [@hid-sp18-516-www-wiki-nosql] features and it can be used as a
non-relational data storage and processing technology. The components of
Solr can be customized easily by extending and configuring its Java
classes thereby making it flexible and
extensible [@hid-sp18-516-www-tutorialspoint-solr]. Solr provides
navigation features to world's largest internet sites like Netflix,
Instagram, Best Buy, eBay etc. [@hid-sp18-516-www-apacheorg-solr]. It is
packaged as the built-in search in many applications such as content
management systems and enterprise content management
systems [@hid-sp18-516-www-wiki-solr].

SpagoBI
=======

SpagoBI is an open source business intelligence and big data analytics
platform.The software is completely free, but paid user support,
maintenance, consulting and training are available for purchase.It
includes tools for [@spagobi] reporting, multidimensional analysis
(OLAP), charts, location intelligence, data mining, ETL and more.It also
integrates with [@spagobi] popular in-memory processing engines and
enables real-time processing.SpagoBI allows analysis of
 [@stratebi-bigdata] unstructured data, such as as audio files, videos
and images.It can also access different types of  [@stratebi-bigdata]
databases and analytical applications (such as Teradata), NoSQL
databases (such as HBase) and HDFS (Hadoop) or distributions
(Hortonworks)

Google Cloud Spanner
====================



> ``Cloud Spanner is the enterprise-grade, globally-distributed
> database service built for the
> cloud'' [@hid-sp18-523-www-google-spanner].

This
technology combines the benefits of relational database structure with
non-relational horizontal scale.

> ``This is unique combination that delivers high-performance
> transactions and strong consistency across rows, regions, and
> continents with high availability and enterprise-grade
> security'' [@hid-sp18-523-www-google-spanner].

Cloud
Spanner revolutionizes database administration and management and makes
application development more
efficient [@hid-sp18-523-www-google-spanner].

> ``It is fully managed, can be easily deployed and has built in
> synchronous replication and maintenance
> feature'' [@hid-sp18-523-www-google-spanner].

It takes
advantages of all critical features of relational database---such as
schemas, ACID transactions, and SQL queries (ANSI 2011) thus reducing
the need of high learning curve for developers who are well proficient
in structured query language.

> ``Client libraries that can connect to spanner is language
> independent. These libraries can be developed in C sharp, Go, Java,
> Node.js, PHP, Python, and Ruby. Already existing JDBC driver with
> popular third-party tools can be used to connect with
> spanner'' [@hid-sp18-523-www-google-spanner].

It is purposely built for global transactional consistency.

Spinnaker
=========

Spinnaker is an open source, multi-cloud continuous delivery platform
that helps you release software updates with high velocity and
confidence. It provides two core features: cluster management to view
and manage your resources in the cloud and deployment management to
construct and manage continuous delivery
workflows [@hid-sp18-602-www-spinnaker-io]. The main advantage of
Spinnaker is it holds a modern software development concept of
continuous delivery that is application updates should be delivered when
they are ready, instead of on a fixed schedule. Also, it improves the
speed, stability of application deployment processes along with
supporting deployments across different platforms by several different
cloud providers.

Although the project Spinnaker first started out with Netflix and then
google joined in 2014, the Spinnaker community now includes dozens of
organizations such as Microsoft, Oracle, Target, Veritas, Schibsted,
Armory and Kenzan [@hid-sp18-602-www-spinnaker-gc].

SQLite
======

SQLite is an open source, embedded relational database. Originally
released in 2000, it has outstanding performance in terms of
portability, ease of use, compactness, availability, and
reliability [@www-sqlite].

SQLite has an exquisite, modular architecture and has introduced some
unique methods for relational database management. It consists of eight
independent modules organized in three subsystems [@www-sqlite-archi].
This model divides the query process into several discrete tasks, just
like working on the assembly line. The query is compiled at the top of
the architectural stack, executed in the middle, and the operating
system's storage and interfaces are processed at the bottom.

Sqoop
=====

The primary application of Sqoop is data transfer between the
traditional or relational database management systems and Hadoop
platforms. It also has the capability to transfer data from mainframes
to Hadoop. Sqoop works with Oracle, MySQL and can import data from these
sources into the Hadoop distributed File systems or HDFS. In addition it
can also transform data in map-reduce or even export it to the database
such as Oracle. Sqoop works in batch mode and cannot move data real
time.  [@hid-sp18-517-Sqoop]. Sqoop relies on the database to describe
the schema of the data being imported. It uses MapReduce to import and
export the data, which provides parallel operation as well as fault
tolerance. For databases, Sqoop reads the table row-by-row into HDFS.
For mainframe datasets, Sqoop reads records from each mainframe dataset
into HDFS. The output of this import process is a set of files
containing a copy of the imported table or datasets. Since the import
process runs in parallel processes each process creates a file causing
multiple files being created. These text files can use different
delimiters such as comma, pipe and so on  [@hid-sp18-517-Sqoop]. Sqoop
relies on the database to describe the schema of the data being
imported. It uses MapReduce to import and export the data, which
provides parallel operation as well as fault tolerance. For databases,
Sqoop reads the table row-by-row into HDFS. For mainframe datasets,
Sqoop reads records from each mainframe dataset into HDFS. The output of
this import process is a set of files containing a copy of the imported
table or datasets. Since the import process runs in parallel processes
each process creates a file causing multiple files being created. These
text files can use different delimiters such as comma, pipe and so
on [@hid-sp18-517-Sqoop]. [^1]

[^1]: citation wrongly placed

Stardog
=======

Stardog is a graph database from US-software company Complexible.
Stardog has a particular focus on OWL and RDF-based systems, with the
latest release Stardog 5.2 (9 January 2018) supports SPARQL query
language; property graph model and Gremlin graph traversal language; OWL
2 and user-defined rules for inference and data analytics; virtual
graphs; geospatial query answering; and programmatic interaction via
several languages and network
interfaces [@hid-sp18-405-wwwdocs-stardog]. Further, the developers of
StarDog OWL/RDF DBMS have pioneered a new use of OWL as a schema
language for RDF databases. This is achieved by adding integrity
constraints (IC), also expressed in OWL syntax, to the traditional
*open-world* OWL axioms [@hid-sp18-405-cer2012graphical-stardog]. Other
key features of Stardog include Machine Learning and Logical Inference,
Semantic Search, Geospatial Search etc. As a commercial software,
Stardog is priced for community, developer and enterprise tiers. The
enterprise version has a free 30-day trial and the community version is
free to download and use for up to four users and ten graph
databases [@hid-sp18-405-www-stardog].

Synthea :o:
=======

Synthea [@hid-sp18-526-www-synthea] is an open-source medical patient
generator. Synthea allows for the full synthetic generation of medical
patients and patient records, which solves the privacy problems of using
real-world patient data. It also allows medical researchers to generate
data on-demand and test scaling, stress, etc. Synthea uses a Generic
Model Framework (GMF) to model and track disease progression as well.
Each patient generated by Synthea is a full-model: from birth to present
with full demographics. This type of data can be used for small and
large-scale health analysis. The data underlying these models are
generated based on current academic research. Therefore, the data can
also be used to run analysis on the synthetic patients.

According to its website, Synthea is useful for Academic Research, the
Health IT Industry, and Policy Formation. Synthea is a product of
MITRE Corporation written in Java, and supports both C-CDA and FHIR
formats. It can also generate graphs using Graphviz.

Synthetic Data Vault
====================

The most notable synthetic data generator is the Synthetic Data Vault
(SDV)[@hid-sp18-526-patki-sdv]. Developed at MIT by Neha Patki, Roy
Wedge, and Kalyan Veeramachaneni, the Synthetic Data Vault uses machine
learning techniques to model database structure and content. The models
can then be used to generate entirely synthetic tables and relationships
which are true to the form of the originals. Because the synthetic data
is generated and modeled mathematically according to the original data,
very little, if any, insight is lost. Here we will explore why we should
use synthetic data, how SDV generates synthetic data, and how to use the
data generated by SDV.

SDV is written in Python and is, therefore, cross-platform. A separate
file is required for each database in the table. Also, each database
requires a configuration file in json format. The specifications for the
configuration file will be shown later, but first we will discuss why
such a product is necessary.

Apache SystemML
===============

Apache SystemML is an [@systemml] open-source language and compiler that
makes it dramatically easier to build custom machine learning
solutions.Apache SystemML is [@systemml] flexible, scalable and optimal
for Big Data that enables automatic optimization.SystemML's
enables [@systemml] algorithm customizability via R-like and Python-like
languages.It also has [@systemml_blog] multiple execution modes,
including Spark MLContext, Spark Batch, Hadoop Batch, Standalone, and
JMLC. It characteristics includes [@systemml_blog] automatic
optimization based on data and cluster characteristics to ensure both
efficiency and scalability.

Tableau
=======

Tableau is the data visualization software that helps people to see and
understand the data. Tableau can connect to almost any database, drag
and drop to create visualizations, and share with a click. We can either
schedule to get data refreshed or have real time updates with live
connection. We can explore data from any sources from spreadsheets to
databases to Hadoop to cloud services in minutes and dashboard can be
published live on the web and on mobile devices [@hid-sp18-513-tableau].
Tableau is a Business Intelligence tool for visually analyzing the data.
Users can create and distribute an interactive and shareable dashboard,
which depict the trends, variations, and density of the data in the form
of graphs and charts. Tableau can connect to files, relational and Big
Data sources to acquire and process data. It also allows data blending
and real-time collaboration, which makes it very unique. Tableau is also
positioned as a leader Business Intelligence and Analytics Platform in
Gartner Magic Quadrant.

Talend
======

Talend is an open source software that provides variety of tools for
integration of data of an organization. It also helps to synchronize
data between different systems. Some tools help to generate native code
to deploy the data to hadoop. Talend is a drag on drop software helps to
configure prebuilt components and clean the data from different sources.
It also contains tools to check data quality for clients so that they
can decide whether they need to clean the data before integrating it
with clean datasets [@hid-sp18-502-Talend].

Teradata Intelliflex
====================

Teradata Intelliflex is an integrated environment for Data Warehouse
functionalities which in its own way integrates some of the strategic
and operational workload onto one Data warehouse. It is available on
Intellicloud, which is a cloud offering of Teradata. Intelliflex can
*independently scale nodes* enabling us to use nodes as required to
manage the processing power and also

> ``store data on multiple layers of solid state drives''

with virtual storage as per our data
requirements [@hid-sp18-418-Teradata-Intelliflex-features].

Theano
======

\TODO{ERROR: USE ONLY ASCII}
Theano is a numerical computation library built for Python programming
language. Theano uses Numpy syntax for expressing computations that can
be compiled to run efficiently on both CPU and GPU architectures. Theano
is an open source project and most of the development is primarily
contributed by a machine learning group at the Université de
Montréal [@hid-sp18-510-wiki-theano]. Theano is a Python library that
allows developers to efficiently define, optimize, and evaluate
mathematical expressions including multi-dimensional arrays. Some of the
features of Theano include tight integration with NumPy, transparent use
of a GPU to perform data intensive computations, dynamic C code
generation for evaluating expressions faster and support for extensive
unit testing and self-verification [@hid-sp18-510-web-theano].

Tibco DataSynapse GridServer
============================

DataSynapse was founded by two ex-investment bankers with an idea to
speed up calculations by running them in parallel, distributed over
multiple machines in the cluster to avoid single point of failure.The
first product live cluster was released in 2001. In 2004 this product
was renamed to GridServer. Gridserver was developed to support larger
and larger grid of network computers [@hid-sp18-514-datasynapsewiki].
DataSyanpse was acquired by Tibco in 2009 and later this product was
renamed as: Tibco DataSynapse
GridServer [@hid-sp18-514-tibcodatasynapsewiki].

DataSynapse GridServer is a highly scalable software infrastructure that
allows application services to operate in a virtualized fashion,
unattached to specific hardware resources. Client applications submit
requests to the Grid environment and GridServer dynamically provisions
services to respond to the request. Multiple client apps can submit
multiple requests simultaneously. The GridServer dynamically creates
multiple instances to handle requests in parallel on different Grid
server nodes. This architecture is therefore highly scalable in both
speed and throughput.A single client can see scalable performance gains
in the processing of multiple requests, and many applications and users
will see scalable throughput though there huge volumes of client
requests [@hid-sp18-514-tibcods].

Data Synapse grid server has the capabilities of compute grid and data
grid. The main components of the grid server are Engines, Directors and
Brokers. All these components are JVM's built in Java. Each component
has their own responsibilities. The applications are deployed in the
engines and computation and processing is also done in the engines.
Engines are light weight containers. Directors receive the client
requests and then navigate to the broker. Broker act as a load balancer
to navigate the request to the available engines in the grid environment
based on engine load, and availability. As there are multiple nodes in
the grid, there will be primary and secondary director, broker, and
several engines to support high availability and fault
tolerance [@hid-sp18-514-tibcods].

TokuDB
======

TokuDB is an open-source storage engine for
MySQL [@hid-sp18-516-www-wiki-mysql] and
MariaDB [@hid-sp18-516-www-wiki-mariadb] used for high-performance in
write-intensive environments. It uses fractal-tree index data structure,
that keeps the data sorted and allows searches and sequential data
access simultaneously, thereby providing improved
performance [@hid-sp18-516-www-wiki-tokudb]. TokuDB compresses all data
on disk including indexes, thereby reducing the disk and flash-drive
storage requirements. It eliminates slave lag with read free
replication [@hid-sp18-516-www-percona-server-tokudb]. It is ACID and
MVCC compliant and offers online schema-modifications. It is also
included in Percona
server [@hid-sp18-516-www-percona-tokudb] [@hid-sp18-516-www-wiki-tokudb].
The use of fractal-tree technology also enables TokuDB to speed indexing
by 10 times or more, thereby improving the performance of large
databases (typically 50 GB or more). Its exceptional indexing feature
makes it an ideal solution for applications that must simultaneously
query and update huge volumes of rapidly arriving
data [@hid-sp18-516-www-blackbird-si]. This also makes it scalable and
improves operational efficiency. TokuDB is well-suited for the demanding
requirements of big data applications as it lowers the infrastructure
costs associated with scaling and optimization
efforts [@hid-sp18-516-www-percona-tokudb]. It has zero-maintenance
downtime which makes it highly available in both public and private
environments including
cloud [@hid-sp18-516-www-percona-server-tokudb] [@hid-sp18-516-www-percona-tokudb].

TreasureData
============

Treasure Data provide a platform to consolidate the customer data from
different sources, integrate them and see actionable customer view. This
is helpful for Marketing Analytics, Sales Operations Analytics. This
helps in understanding customer behavior easily and fast and take the
actions accordingly for business benefit. We need to access various
level of historical and real time data to get 360 degree view of data.
Treasure Data enables the connection to various sources easily and
reduce the data cleaning process as it has it's own in built tool for
cleaning the data. Treasure Data work on structured and semi structured
data. It has almost 100 connectors to connect to various sources
including social media, pull the data in real time and maintain a single
view of the customer using advanced machine learning technologies. Data
is available within short time (in minutes) for the actions and business
decision [@hid-sp18-511-treasuredata].

Twilio
======

Twilio is one among the famous companies which provide cloud
communications platform as a services (Paas). Through the APIs provided
by Twilio, the software developers will be able to programmatically
manage phone calls and also the text messages. It deploys its technology
on the most successful HTTP protocol and also provides the flexibility
of billing according to the usage.

In order to protect against unexpected outages, Twilio follows strict
architectural design methodologies. For such efforts, Twilio has been
applauded. Twilio also makes efforts in the development of open-source
software and is consistently making contributions to the open-source
community [@hid-sp18-406-Twilio].

US Consumer Financial Protection Bureau
=======================================

The United States Consumer Financial Protection Bureau (CFPB) Data and
Research organization is a consumer protection agency that was
established after the 2008--2009 economic crisis. The agency was
established to help enforce consumer protection laws and to help protect
consumers against illegal financial risks. The agency has established
multiple data sources that are free and open to the public for
consumption and analysis [@hid-sp18-505-CFPB2018].

Google Vision
=============

> ``Google Cloud Vision API has made the herculean task of correct
> labeling/classification of images simple. With exponential increase
> in different types of data including images, voice, video are
> transformed into digital form, stored and transmitted over
> network. There was a dire need of automated technology solution that
> can correctly classify / label images with high level of confidence;
> Google Vision API provides such platform to researchers and
> developers. It quickly classify images into thousands of predefined
> meaning ful categories'' [@hid-sp18-523-www-google-vision].

It does this by encapsulating powerful machine learning models (KNN,
Regression) etc for classification of images.

> ``It help detects objects and faces within images, finds and reads
> printed words contained within images through
> OCR'' [@hid-sp18-523-www-google-vision].

> ``Developers can build meta data on their image catalog, moderate
> offensive content, or launch new marketing campaign/scenarios
> through image sentiment analysis. It can be accessed through REST
> API'' [@hid-sp18-523-www-google-vision].

IBM Watson
==========

Old: IBM Watson
---------------

IBM Watson is a super computer built on cognitive technology that
processes information like the way human brain does by understanding the
data in a natural language as well as analyzing structured and
unstructured data [@www-ibmwatson-wiki]. It was initially developed as a
question and answer tool more specifically to answer questions on the
quiz show \*Jeopardy\* but now it has been seen as helping doctors and
nurses in the treatment of cancer. It was developed by IBM's DeepQA
research team led by David Ferrucci. With Watson you can create bots
that can engage in conversation with you [@www-ibmwatson]. You can even
provide personalized recommendations to Watson by understanding a user's
personality, tone and emotion. Watson uses the Apache Hadoop framework
in order to process the large volume of data needed to generate an
answer by creating in-memory datasets used at run-time. Watson's DeepQA
UIMA s (Unstructured Information Management Architecture) annotators
were deployed as mappers in the Hadoop Map-Reduce framework. Watson is
written in multiple programming languages like Java, C++, Prolog and it
runs on the SUSE Linux Enterprise Server. Today Watson is available as a
set of open source APIs and Software As a Service product as
well[@www-ibmwatson].

New: IBM Watson
---------------

IBM's Watson computer, named after the company's first CEO, Thomas
Watson, was created to fulfill an engineering challenge: to defeated
Jeapordy! champions[@hid-sp18-525-watson]. Although Watson defeated for
champions, that victory was years in the making. Numerous adjustments
were required to make all 3 contestants equal. For example, Watson was
required to push a button, like the other
contestants[@hid-sp18-525-watson]. Since the early days of Watson, many
advances in computing have happened. The explosion of machine learning
algorithms and artificial intelligence have greatly expanded the use of
Watson. Watson has developed into a mar- keting slogan, and is even
co-branded with companies, such as H&R Block[@hid-sp18-525-watson].
Advancements in hardware enabled the revolution in data analysis that is
currently happening. Super computing, like Watson, along with enhanced
al- gorithms have fueled the revolution. Based on such advances, Watson
is now a stand-alone division at IBM[@hid-sp18-525-watson]. Being a
separate division and an individual brand gives IBM the ability to
deploy Watson to a myriad of activities. Watson is the hub of IBM's
cloud computing business. Watson also forecasts the weather and conducts
research from any number of organizations[@hid-sp18-525-watson].

Weka
====

Weka [@hid-sp18-413-weka] is a machine learning environment that
provides grapical interface. It has a library of machine learning
algorithms for data mining tasks.It was developed in Waikato university
New Zealand. Python and R have advanced tools for machine learning but
can be difficult to learn specially for a beginner and Weka makes this
transition easier. Weka is written in Java and has its own API. All
tasks performed with GUI can be also performed in CLI@. It's GUI has
Explorer to learn, experimenter to run experiments and Knowledge flow to
build pipelines for actual implementations.

The World Bank
==============

The world bank is a philanthropic organization that has two main goals.
First, end extreme poverty and second, to promote shared prosperity. One
of the ways the World Bank hopes to meet its goals is by developing and
sharing an open-data platform that can be used by the public. The World
Bank hopes the open data platform can be used to promote knowledge that
will ultimately help with its goal of promoting prosperity and ending
extreme poverty [@hid-sp18-505-Bank2018].

WSO2 Analytics
==============

WSO2 Analytics is provided by the WSO2 Stream Processor. The features of
the stream processor are support for stream and event processing
contracts, user friendly development interfaces, high availability and
scalability, easy integration with other components and business
friendly analytics dashboards [@hid-sp18-416-www-wso2-stream-processor].
The stream processor is based on the Siddhi Processing
engine [@hid-sp18-416-github-siddhi] and is capable of performing
real-time analytics for different types of events. The query processing
engine stays as the central component while the events pass through the
engine. WSO2 drives the vision of digitizing businesses and analytics is
a key part according to [@hid-sp18-416-www-srinath-conference-talk]. The
WSO2 team emphasizes the need for analytics in businesses where
automation and analytics is the highlight while taking the maximum use
of contextual data [@hid-sp18-416-www-business-benefits-analytics].

XGBoost :o:
=======


> ``XGBoost is an open-source software library which provides the
> gradient boosting framework for C++, Java, Python,R, and Julia''
> [@hid-sp18-401-XGBoost-wiki].

XGBoost stands for Extreme Gradient Boosting. Before talking about
XGBoost, it is best to give introduction to general gradient boosting.
Gradient Boosting is a machine learning technique used to build both
regression and classification models. It is primarily used in building
decision trees. But building gradient boosting models on huge datasets
(that sometimes contain more than 500,000 observations) is
computationally onerous, not so efficient.

> ``The name xgboost, though, actually refers to the engineering goal
> to push the limit of computations resources for boosted tree
> algorithms. Which is the reason why many people use xgboost''.

- says Tianqi Chen, creator of XGBoost
(later received contributions from many
developers) [@hid-sp18-401-XGBoost-gen]. The description of XGBoost
according to the software repository on github is

> ``Scalable, Portable and Distributed Gradient Boosting (GBDT, GBRT
> or GBM) Library, for Python, R, Java, Scala, C++ and more''
> [@hid-sp18-401-XGBoost-git].

Zepplin
=======

Apache [@hid-sp18-413-Zeppelin] Zepplin is open source web based
notebook that has built in data discovery, exploration, visualization
and collaborative features.Zeppelin interface is interactive and
seamlessly provides a single interface to execute code and visualize in
the same dashboard. Zepplin's architecture has three layers; frontend,
Zepplin server and interpreter processor. Zeppelin's interpreter
supports any language or data processing backend to act as input. It
supports [@hid-sp18-413-ApacheSpark] Apache Spark out of the box without
any configuration.

Zmanda
======

Zmanda is an open source platform which offers open source cloud backup.
The recovery software and the services provided by Zmanda are used by
many of the small and the mid-size ventures. In order to effectively
protect the Linux, Solaris, Windows, Mac OS X environments and enable
the backup and recovery in these operating systems, Zmanda offers the
Amanda Enterprise. The Zmanda Recovery Manager (ZRM) is targeted to
achieve the functionalities for scheduling the full and incremental
backups [@hid-sp18-412-zmanda_crunchbase].

There has been a huge growth in the data size in the recent years and
numerous organizations lack the budget and don't have the ability to
perform the complex tasks and manage the costly backups. In order to
effectively address this, Zmanda provides the Amanda Enterprise which
offers the backup and recovery services that integrates and provides the
quick setup, disentangled administration to tasks, and less cost. Amand
Enterprise liberates us from being bolted into a vendor by providing the
standard formats and tools [@hid-sp18-412-zmanda_amanda].

Amanda Enterprise is one of the toll compelling and predominant
commercial open source backup and recovery software. It provides the
less time consuming solution with the goal to implement the backup tasks
in a simplified manner for the various systems, databases and other
applications. Apart, from these it also establishes the secure
environment that puts a barrier for intruders to avoid breaching the
critical data and the engineers can quickly restore the backups in a
chaotic situation [@hid-sp18-412-zmanda_webinar].

