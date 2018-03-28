
## MongoDB Tutorial

**THIS IS A DRAFT AND NOT COMPLETED YET**

* status: 0
* feedback: 1

Some steps are copied from
<https://www.tutorialspoint.com/mongodb/mongodb_environment.htm/>


### Overview

| RDBMS      | MongoDB            | 
| -----------| ------------------ |
| Database   | Database           | 
| Table      | Collection         |
| Tuple/Row  | Document           |
| column     | Field              |
| Table Join | Embedded Documents |
| Primary Key| Primary Key        | 
    
MongoDB is an open-source document database and NoSQL database, which
is written in C++. A document is a set of key-value pairs. The table
shows the difference between RDBMS terminology and MongoDB.
 
 

### Advantages of MongoDB over RDBMS 

* Schema less - MongoDB is a document database in which one collection
  holds different documents. Number of fields, content and size of the
  document can differ from one document to another.
* Structure of a single object is clear.
* No complex joins.
* Deep query-ability. MongoDB supports dynamic queries on documents
  using a document-based query language that's nearly as powerful as
  SQL.
* Tuning.
* Ease of scale-out - MongoDB is easy to scale.
* Conversion/mapping of application objects to database objects not
  needed.
* Uses internal memory for storing the (windowed) working set,
  enabling faster access of data.

### Install MongoDB on Ubuntu

Run the following command to import the MongoDB public GPG key

	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

Create a /etc/apt/sources.list.d/mongodb.list file using the following command.

	echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

Now issue the following command to update the repository

	sudo apt-get update

Next install the MongoDB by using the following command

	apt-get install mongodb-10gen = 2.2.3

Start MongoDB

	sudo service mongodb start

Stop MongoDB

	sudo service mongodb stop

Restart MongoDB

	sudo service mongodb restart
  
