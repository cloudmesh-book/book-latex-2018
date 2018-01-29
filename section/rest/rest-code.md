#  REST CODE SINPPETS

## run.py

from eve import Eve
app = Eve()

if __name__ == '__main__':
    app.run()

## settings.py
DOMAIN={
   'student':{
      'schema':{
         'firstname':{
            'type':'string'
         },
         'lastname':{
            'type':'string'
         },
         'school':{
            'type':'string'
         },
         'university':{
            'type':'string'
         },
         'email':{
            'type':'string',
            'unique':True
         }
      }

RESOURCE_METHODS = ['GET', 'POST']

## MongoDB Installation

$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
$ echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/
mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
$ sudo apt-get update
$ sudo apt-get install -y mongodb-org

## Create Base Directory

$ mkdir -p ~/cloudmesh/data/db
$ mkdir ~/cloudmesh/eve

## Run MongoDB
$ mongod --dbpath ~/cloudmesh/data/db

## Run MongoDB Client
$ mongo --host 127.0.0.1:27017
$ show databases

## Run REST
$ cd ~/cloudmesh/eve
$ python run.py
