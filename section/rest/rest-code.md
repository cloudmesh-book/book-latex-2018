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

## CURL POST
   	$ curl -H "Content-Type: application/json" -X POST -d '{"firstname":"Albert","lastname":"Zweistein","school":"ISE","university":"Indiana University","email":"albert@iu.edu"}' http://127.0.0.1:5000/student/

## CURL GET
   	$ curl http://127.0.0.1:5000/student?firstname=Albert

## run2.py

	from eve import Eve
	app = Eve()

	@app.route('/student/john')
	def theStudentJohn():
	    return "My name is John"

	if __name__ == '__main__':
	    app.run()


## client.py
	import requests
	import json


	def get_all():
	    response = requests.get("http://127.0.0.1:5000/student")
	    print json.dumps(response.json(), indent=4, sort_keys=True)


	def save_record():
	    headers = {
	    	'Content-Type': 'application/json',
	    }

	    data = '{"firstname":"Jane",
		     "lastname":"Doe",
		     "school":"ISE",
		     "university":"Indiana University",
		     "email":"jane@iu.edu"}'

            response = requests.post('http://localhost:5000/student/',
			              headers=headers, 
				      data=data)

      	    print(response.json())


	get_all()

## Run Python Client
	python client.py
