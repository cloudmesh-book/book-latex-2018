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
def get_cpu():
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

Go to this URL :  [http://0.0.0.0:80](http://0.0.0.0:80)


#### Additional INFO :

```bash

$ docker ps -a
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                   PORTS                         NAMES
dc8cccf22216        35ffca69dcc3              "/entrypoint.sh /sta…"   4 minutes ago       Up 4 minutes             0.0.0.0:80->80/tcp, 443/tcp   romantic_sammet
e7a45c81b237        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                                  silly_kare
a4b6419016af        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                                  musing_lamport
6eb7102a514e        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                                  competent_borg
f7c6a4710ad2        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                                  static-site
361c8812ba90        busybox                   "echo 'hello from bu…"   5 days ago          Exited (0) 5 days ago                                  blissful_wing
350ec9a2609f        busybox                   "sh"                     5 days ago          Exited (0) 5 days ago                                  nifty_mahavira
893cb11019f9        hello-world               "/hello"                 5 days ago          Exited (0) 5 days ago                                  competent_spence
1f90a411c746        hello-world               "/hello"                 11 days ago         Exited (0) 11 days ago                                 reverent_raman
$ docker stop dc8cccf22216
dc8cccf22216
vibhatha@vibhatha-ThinkPad-P50:~/Sandbox/docker-flask$ docker ps -a
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                       PORTS               NAMES
dc8cccf22216        35ffca69dcc3              "/entrypoint.sh /sta…"   4 minutes ago       Exited (137) 5 seconds ago                       romantic_sammet
e7a45c81b237        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                            silly_kare
a4b6419016af        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                            musing_lamport
6eb7102a514e        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                            competent_borg
f7c6a4710ad2        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                            static-site
361c8812ba90        busybox                   "echo 'hello from bu…"   5 days ago          Exited (0) 5 days ago                            blissful_wing
350ec9a2609f        busybox                   "sh"                     5 days ago          Exited (0) 5 days ago                            nifty_mahavira
893cb11019f9        hello-world               "/hello"                 5 days ago          Exited (0) 5 days ago                            competent_spence
1f90a411c746        hello-world               "/hello"                 11 days ago         Exited (0) 11 days ago                           reverent_raman
```

#### Deleting Docker Conatiner first and then remove Docker Image

```bash


$ docker images
REPOSITORY                   TAG                 IMAGE ID            CREATED             SIZE
sample-flask-rest-app        latest              8b3246425402        8 minutes ago       697MB
<none>                       <none>              35ffca69dcc3        10 minutes ago      697MB
sample-flask                 latest              b763c65ae11b        2 days ago          709MB
my-awesome-nginx             v3                  56cb2d15e863        3 days ago          16.8MB
tiangolo/uwsgi-nginx-flask   flask               3ab637f17463        2 weeks ago         709MB
tiangolo/uwsgi-nginx-flask   python2.7           ec43f17def9a        2 weeks ago         697MB
ubuntu                       16.04               0458a4468cbc        3 weeks ago         112MB
ubuntu                       latest              0458a4468cbc        3 weeks ago         112MB
busybox                      latest              5b0d59026729        3 weeks ago         1.15MB
nginx                        alpine              bb00c21b4edf        5 weeks ago         16.8MB
hello-world                  latest              f2a91732366c        3 months ago        1.85kB
prakhar1989/static-site      latest              f01030e1dcf3        2 years ago         134MB


$ docker ps -a
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                            PORTS               NAMES
74b9b994c9bd        sample-flask-rest-app     "/entrypoint.sh /sta…"   2 minutes ago       Exited (137) About a minute ago                       infallible_mahavira
dc8cccf22216        35ffca69dcc3              "/entrypoint.sh /sta…"   10 minutes ago      Exited (137) 5 minutes ago                            romantic_sammet
e7a45c81b237        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                                 silly_kare
a4b6419016af        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                                 musing_lamport
6eb7102a514e        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                                 competent_borg
f7c6a4710ad2        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                                 static-site
361c8812ba90        busybox                   "echo 'hello from bu…"   5 days ago          Exited (0) 5 days ago                                 blissful_wing
350ec9a2609f        busybox                   "sh"                     5 days ago          Exited (0) 5 days ago                                 nifty_mahavira
893cb11019f9        hello-world               "/hello"                 5 days ago          Exited (0) 5 days ago                                 competent_spence
1f90a411c746        hello-world               "/hello"                 11 days ago         Exited (0) 11 days ago                                reverent_raman


$ docker rm 74b9b994c9bd
74b9b994c9bd


$ docker ps -a
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                       PORTS               NAMES
dc8cccf22216        35ffca69dcc3              "/entrypoint.sh /sta…"   10 minutes ago      Exited (137) 5 minutes ago                       romantic_sammet
e7a45c81b237        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                            silly_kare
a4b6419016af        sample-flask              "/entrypoint.sh /usr…"   2 days ago          Exited (0) 2 days ago                            musing_lamport
6eb7102a514e        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                            competent_borg
f7c6a4710ad2        prakhar1989/static-site   "./wrapper.sh"           5 days ago          Exited (0) 5 days ago                            static-site
361c8812ba90        busybox                   "echo 'hello from bu…"   5 days ago          Exited (0) 5 days ago                            blissful_wing
350ec9a2609f        busybox                   "sh"                     5 days ago          Exited (0) 5 days ago                            nifty_mahavira
893cb11019f9        hello-world               "/hello"                 5 days ago          Exited (0) 5 days ago                            competent_spence
1f90a411c746        hello-world               "/hello"                 11 days ago         Exited (0) 11 days ago                           reverent_raman


$ docker images
REPOSITORY                   TAG                 IMAGE ID            CREATED             SIZE
sample-flask-rest-app        latest              8b3246425402        8 minutes ago       697MB
<none>                       <none>              35ffca69dcc3        10 minutes ago      697MB
sample-flask                 latest              b763c65ae11b        2 days ago          709MB
my-awesome-nginx             v3                  56cb2d15e863        3 days ago          16.8MB
tiangolo/uwsgi-nginx-flask   flask               3ab637f17463        2 weeks ago         709MB
tiangolo/uwsgi-nginx-flask   python2.7           ec43f17def9a        2 weeks ago         697MB
ubuntu                       16.04               0458a4468cbc        3 weeks ago         112MB
ubuntu                       latest              0458a4468cbc        3 weeks ago         112MB
busybox                      latest              5b0d59026729        3 weeks ago         1.15MB
nginx                        alpine              bb00c21b4edf        5 weeks ago         16.8MB
hello-world                  latest              f2a91732366c        3 months ago        1.85kB
prakhar1989/static-site      latest              f01030e1dcf3        2 years ago         134MB


$ docker rmi 8b3246425402
Untagged: sample-flask-rest-app:latest
Deleted: sha256:8b3246425402b55aa5c4cf02cc5ad9ebd880b9fef639529b81495e778e3b3246
Deleted: sha256:639497d8f8bfa7cf497dfc142c8cc9d9b0b6b8689c777b9daa185c618b33d03c

```










