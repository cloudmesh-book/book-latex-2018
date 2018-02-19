# Dockerized Flask REST API Application

## Objective

The objective of this interactive tutorial is to use Docker to deploy a REST service designed using Python Flask. 

## Prerequisites

1. Virtualenv installation
2. Pip installation

## Activate Virutal Environment

```bash
$ mkdir -p ~/cloudmesh/containers/docker-flask
$ cd ~/cloudmesh/containers/docker-flask
$ virtualenv venv
$ source venv/bin/activate
```

Now you are inside the created virtual environment.
The terminal will look something like
```bash
(venv)neo$

```

## File Structure

The File structure takes the following look.

```
docker-flask/[FOLDER]:[BASE PATH : ~/cloudmesh/containers/docker-flask]
	--|Dockerfile [FILE]
	--|requirements.txt [FILE]
	--|app/ [FOLDER]
    	--|main.py [FILE]
    --|venv [FOLDER]
```

### Step 1 :

Create requirements.txt file

```
$ emacs requirements.txt

```
Include the folllowing content in the requirements.txt file.

```
Flask==0.11.1
```

Now run the following command

```bash
pip install -r requirements.txt
```



### Step 2 :

Then we are going to create thr Dockerfile which includes all the instructions
for the deployment of the REST API on docker.

```dockerfile
FROM tiangolo/uwsgi-nginx-flask:flask

COPY ./app /app
```

Here we have created a minimal Dockerfile.

FROM  : command tells the image that has to be pulled from the Docker hub. So in this case for the ease of the task and to keep it simple with minimum packages we are going to select an image including nginx, flask and uWSGI.

1. Nginx : An open source software for web serving capability.
2. Flask : REST API package in Python
3. uWSGI : A server and one of the protocols implemented in WSGI which is a protocol used for pure HTTP communications and load balancing.

So this image includes everything we need to work on this tutorial.

COPY : Here it will copy content from app folder created in local machine to the Docker container.

Now the Dockerfile is completed and we have everything needed to build a docker image.

### Step 3 :

Then we need to creat the main.py file inside the app folder.

```bash
emacs app/main.py
```

Then add the following content.

```python
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hey I'm using Docker!"

@app.route("/api/cpu")
def get_cpu:
# ADD CODE TO GET CPU INFO
# USE psutil LIBRARY
    return "SHOW YOUR CPU INFO"

if __name__ == "__main__":
app.run(host="0.0.0.0", debug=True, port=80)
```

After adding the content save and exit emacs.

## Build Docker Image

Now run the following commands.
```bash
$ cd ~/cloudmesh/containers/docker-flask
$ docker build -t sample-flask-rest-app .
```

```
Note : Changing any content inside the app folder must be updated in the container by rebuilding the image.
```

## Run Docker Image

Run the following commands to get the REST API hosted on [http://0.0.0.0:80](http://0.0.0.0:80)

```bash
$ docker run -p 80:80 -t sample-flask-rest-app
```










