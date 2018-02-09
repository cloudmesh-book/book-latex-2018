REST Service Generation with Swagger 
====================================

In this subsection we are discussing how to use OpenAPI 2.0 and Swagger
Codegen to define and develop a REST Service.

We assume you have been familiar with the concept of REST service,
OpenAPI and Swagger as discussed in Sections \[s:rest-intro\] and
\[S:swagger-specification\].

We will use a simple example to demonstrate the process of developing a
REST service with Swagger/OpenAPI 2.0 specification and the tools
related to is. The general steps are:

-   Step 1 (Section \[s:step-1-define-your-rest-service\]). Define the
    REST service conforming to Swagger/OpenAPI 2.0 specification. It is
    a YAML document file with the basics of the REST service defined,
    e.g., what resources it has and what actions are supported.

-   Step 2 (Section \[s:step-2-swagger-code-gen\]). Use Swagger Codegen
    to generate the server side stub code. Fill in the actual
    implementation of the business logic portion in the code.

-   Step 3 (Section \[s:step-3-swagger-codegen\]). Install the server
    side code and run it. The service will then be available.

-   Step 4 (Section \[s:step-4-swagger-codegen\]). Generate client
    side code. Develop code to call the REST service. Install and run
    to verify.

Step 1: Define Your REST Service 
--------------------------------

In this example we define a simple REST service that returns the hosting
server’s basic CPU info. The example specification in yaml is as
follows:
```
  swagger: "2.0"
  info: 
    version: "1.0.0"
    title: "Cloudmesh CPU Info"
    description: "A sample API that uses a petstore as an example to demonstrate features in the swagger-2.0 specification"
    termsOfService: "http://swagger.io/terms/"
    contact: 
      name: "Cloudmesh REST Service Example"
    license: 
      name: "Apache2"
  host: "localhost:8080"
  basePath: "/api"
  schemes: 
    - "http"
  consumes: 
    - "application/json"
  produces: 
    - "application/json"
  paths: 
    /cpu: 
      get: 
        description: "Returns CPU information from host server"
        produces: 
          - "application/json"
        responses: 
          "200":
            description: "CPU info"
            schema: 
              $ref: "#/definitions/CPU"
  definitions: 
    CPU: 
      type: "object"
      required: 
        - "model"
      properties: 
        model:
          type: "string"

```
Please use https://editor.swagger.io to verify the correct formatting of your yaml. 

Step 2: Server Side Stub Code Generation and Implementation {#s:step-2-swagger-code-gen}
-----------------------------------------------------------

With the REST service having been defined, we can now generate the
server side stub code easily.

### Setup the Codegen Environment

#### OSX
You will need to [install the Swagger Codegen
tool](https://swagger.io/docs/swagger-tools/) if not yet done so. For
OSX we recommend that you use the homebrew install via

    $ brew install swagger-codegen

#### Ubuntu

On Ubuntu you can install swagger as follows (update the version as
needed):
```
 $ mkdir ~/swagger
 $ cd ~/swagger
 $ wget https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.3.1/swagger-codegen-cli-2.3.1.jar    
```
Add the alias to your `.bashrc` or `.bash_profile` file. After you start
a new terminal you can use in that terminal now the command

#### Adding Alias to Bashrc

```
$ vim ~/.bashrc
Press ESC, then SHIFT+G+A
$ alias swagger-codegen="java -jar ~/swagger/swagger-codegen-cli-2.3.1.jar"
Press ESC then type :wq and hit enter.
```
Now source your bashrc as follows :

```
$ source ~/.bashrc
```

Type the following in a terminal 
```
$ swagger-codegen
```

For other platforms you can just use the `.jar` file, which can be
downloaded from [this
link](https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.3.1/swagger-codegen-cli-2.3.1.jar).

Also make sure Java 7 or 8 is installed in your system. To have a well
defined location we recommend that you place the code in the directory
`~/cloudmesh`. In this directory you will also place the `cpu.yaml`
file.

### Generate Server Stub Code

After you have the codegen tool ready, and with Java 7 or 8 installed in
your system, you can run the following to generate the server side stub
code:

    swagger-codegen generate \
        -i ~/cloudmesh/cpu.yaml \
        -l python-flask \
        -o ~/cloudmesh/swagger_example/server/cpu/flaskConnexion \
        -D supportPython2=true

or if you have not created an alias

    java -jar swagger-codegen-cli.jar generate \
        -i ~/cloudmesh/cpu.yaml \
        -l python-flask \
        -o ~/cloudmesh/swagger_example/server/cpu/flaskConnexion \
        -D supportPython2=true

In the specified directory under *flaskConnexion* you will find the
generated python flask code, with python 2 compatibility. It is best to
place the swagger code under the directory `~/cloudmesh` to have a
location where you can easily find it. If you want to use python 3 make
sure to chose the appropriate option. To switch between python 2 and
python 3 we recommend that you use pyenv as discussed in our python
section.

### Fill in the actual implementation

Under the *flaskConnecxion* directory, you will find a *swagger\_server*
directory, under which you will find directories with *models* defined
and *controllers* code stub resides. The models code are generated from
the definition in Step 1. On the controller code though, we will need to
fill in the actual implementation. You may see a `default_controller.py`
file under the *controllers* directory in which the resource and action
is defined but yet to be implemented. In our example, you will find such
a function definition which we list next:

    def cpu_get():  # noqa: E501
        """cpu_get

        Returns cpu info of the hosting server # noqa: E501


        :rtype: CPU
        """
        return 'do some magic!'

Please note the `do some magic!` string at the return of the function.
This ought to be replaced with actual implementation what you would like
your REST call to be really doing. In reality this could be some call to
a backend database or datastore; a call to another API; or even calling
another REST service from another location. In this example we simply
retrieve the cpu model information from the hosting server through a
simple python call to illustrate this principle. Our final code must look
like the following code to get the expected output.

```
import connexion
import six
import os, platform, subprocess, re

from swagger_server.models.cpu import CPU  # noqa: E501
from swagger_server import util

def cpu_get():  # noqa: E501
    os_info =""
    """cpu_get

    Returns CPU information from host server # noqa: E501

    :rtype: CPU
    """
    if platform.system() == "Windows":
        os_info = platform.processor()
    elif platform.system() == "Darwin":
        command = "/usr/sbin/sysctl -n machdep.cpu.brand_string"
        os_info = subprocess.check_output(command, shell=True).strip()
    elif platform.system() == "Linux":
        command = "cat /proc/cpuinfo"
        all_info = subprocess.check_output(command, shell=True).strip()
        for line in all_info.split("\n"):
            if "model name" in line:
                os_info = re.sub(".*model name.*:", "", line, 1)

    return CPU(os_info)
```


Plese note we are returning a CPU object as defined in the API and later
generated by the codegen tool in the *models* directory.

It is best *not* to include the definition of `get_processor_name()` in
the same file as you see the definition of `cpu_get()`. The reason for
this is that in case you need to regenerate the code, your modified code
will naturally be overwritten. Thus, to minimize the changes, we do
recommend to maintain that portion in a different filename and import
the function as to keep the modifications small.

At this step we have completed the server side code development.

Step 3: Install and Run the REST Service: {#s:step-3-swagger-codegen}
-----------------------------------------

Now we can install and run the REST service. It is strongly recommended
that you run this in a pyenv or a virtualenv environment.

If you haven't installed it do the following :

```
$ sudo apt-get install virtualenv
```

### Start a virtualenv:

In case you are not using pyenv, please use virtual env as follows:
```
$ mkdir ~/cloudmesh/venv
$ cd ~/cloudmesn/venv
$ virtualenv RESTServer
$ source RESTServer/bin/activate
```
Now the terminal must look something like this

```
(RestServer) JasonBourne:~/cloudmesh/venv
```

In case when you want to exit a virtual environment

```
$ deactivate
```

### Make sure you have the latest pip:

    pip install -U pip

### Install the requirements of the server side code:

    cd ~/cloudmesh/swagger_example/server/cpu/flaskConnexion
    pip install -r requirements.txt

### Install the server side code package:

Under the same directory, run:

    python setup.py install

### Run the service

Under the same directory:

    python -m swagger_server

You should see a message like this:

    * Running on http://0.0.0.0:8080/ (Press CTRL+C to quit)

### Verify the service using a web browser:

Open a web browser and visit:

-   http://localhost:8080/api/cpu

to see if it returns a json object with cpu model info in it.

Assignment: How would you verify that your service works with a `curl`
call?

Step 4: Generate Client Side Code and Verify {#s:step-4-swagger-codegen}
--------------------------------------------

In addition to the server side code swagger can also create a client
side code.

### Client side code generation:

Generate the client side code in a similar fashion as we did for the
server side code:
Navigate back to the folder where you placed the jar.
```
$ cd ~/swagger
$ cp swagger-codegen-cli-2.3.1.jar swagger-codegen-cli.jar
```


    $ java -jar swagger-codegen-cli.jar generate \
        -i ~/cloudmesh/cpu.yaml \
        -l python \
        -o ~/cloudmesh/swagger_example/client/cpu \
        -D supportPython2=true

### Install the client side code package:

Although we could have installed the client in the same python pyenv or
virtualenv, we showcase here that it can be installed in a completely
different environment. That would make it even posible to use a python 3
based client and a python 2 based server showcasing interoperability
between python versions (although we just use python 2 here). Thus we
create ane new python virtual environment and conduct our install.
```
$ cd ~/cloudmesh/venv
$ virtualenv RESTClient
$ source RESTClient/bin/activate
$ pip install -U pip
$ cd ~/cloudmesh/swagger_example/client/cpu
$ pip install -r requirements.txt
$ python setup.py install
```
### Using the client API to interact with the REST service

Under the directory *swagger\_example/client/cpu* you will find a
README.md file which serves as an API documentation with example client
code in it. E.g., if we save the following code into a my_client.py file:

    from __future__ import print_function
    import time
    import swagger_client
    from swagger_client.rest import ApiException
    from pprint import pprint
    # create an instance of the API class
    api_instance = swagger_client.DefaultApi()

    try:
        api_response = api_instance.cpu_get()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->cpu_get: %s\n" % e)

We can then run this code to verify the calling to the REST service
actually works. We are expecting to see a return similar to this:

```
$ cd ~/cloudmesh/swagger_example/client/cpu
$ vim my_client.py
PASTE THE CODE IN THE FILE AFTER PRESSING, INSERT key
Then after pasting press ESC, then type :wq and hit enter.
$ python my_client.py
```

    {'model': 'Intel(R) Core(TM)2 Quad CPU    Q9550  @ 2.83GHz'}

Obviosly, we could have applied additional cleanup of the information
returned by the python code, such as removing duplicated spaces.

Towards a Distributed Client Server
-----------------------------------

Although we develop and run the example on one localhost machine, you
can separate the process into two separate machines. E.g., on a server
with external IP or even DNS name to deploy the server side code, and on
a local laptop or workstation to deploy the client side code. In this
case please make changes on the API definition accordingly, e.g., the
**host** value.

