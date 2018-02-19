# Dockerized Flask REST API Application

## Objective

The objective of this interactive tutorial is to use Docker to deploy a REST service designed using Python Flask. 

## Prerequisites

1. Virtualenv installation 
2. Pip installation

## Activate Virutal Environment

```
$ mkdir -p ~/cloudmesh/containers/docker-flask
$ cd ~/cloudmesh/containers/docker-flask
$ virtualenv venv
$ source venv/bin/activate
```

Now you are inside the created virtual environment. 
The terminal will look something like
```
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

{% 5d23aa8bef2bc0669cc4ffd0da4bfb05 %}

Inside the opened emacs window, add the following information.

{% e68cea5526cfe4196ddf278a1b2272d7 %}










