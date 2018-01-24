# REST Services Code Generation with Swagger


In this section we are discussing how to use OpenAPI 2.0 and Swagger Codegen to define and develop a REST Service. 

We assumee you have been familiar with the concept of REST service, OpenAPI and Swagger as discussed in Section ??.


We will use a simple example to demonstrate the process of developing a REST service with Swagger/OpenAPI 2.0 specification and the tools related to is. The general steps are:

* Step 1. Define the REST service conforming to Swagger/OpenAPI 2.0 specification. It is a YAML document file with the basics of the REST service defined, e.g., what resources it has and what actions are supported.
* Step 2. Use Swagger Codegen to generate the server side stub code. Fill in the actual implementation of the
business logic portion in the code.
* Step 3. Install the server side code and run it. The service will then be available.
* Step 4. Generate client side code. Develop code to call the REST service. Install and run to verify.

Step 1: Define Your REST Service
--------------------------------
In this example we define a simple REST service that returns the hosting server's basic CPU info. The example
specification in yaml is as follows:

```yamlex
  swagger: "2.0"
  info: 
    version: "1.0.0"
    title: "cpuinfo"
    description: "A simple service to get cpuinfo as an example of using swagger-2.0 specification and codegen"
    termsOfService: "http://swagger.io/terms/"
    contact: 
      name: "IU ISE software and system team"
    license: 
      name: "Apache"
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
        description: "Returns cpu info of the hosting server"
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

Step 2: Server Side Stub Code Generation and Implementation
-----------------------------------------------------------
With the REST service having been defined, we can now generate the server side stub code easily.

###Setup the Codegen Environment
You will need to [install the Swagger Codegen tool](https://swagger.io/docs/swagger-tools/) if not yet done so.

For the current stable release, the .jar file can be downloaded from [this link](https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.1/swagger-codegen-cli-2.2.1.jar).

Also make sure Java 7 or 8 is installed in your system.

###Generate Server Stub Code
After you have the codegen tool ready, and with Java 7 or 8 installed in your system, you can run the following
to generate the server side stub code:

```
java -jar swagger-codegen-cli.jar generate \
  -i cpu.yaml \
  -l python-flask \
  -o swagger_example/server/cpu/flaskConnexion \
  -D supportPython2=true
```  
In the specified directory under *flaskConnexion* you will find the generated python flask code, with python 2
compatibility.

###Fill in the actual implementation
Under the *flaskConnecxion* directory, you will find a *swagger_server* directory, under which you will find
directories with *models* defined and *controllers* code stub resides. The models code are generated from the
definition in Step 1. On the controller code though, we will need to fill in the actual implementation. You may
see a **default_controller.py** file under the *controllers* directory in which the resource and action is defined
but yet to be implemented. In our example, you will find such function definition:

```python
def cpu_get():  # noqa: E501
    """cpu_get

    Returns cpu info of the hosting server # noqa: E501


    :rtype: CPU
    """
    return 'do some magic!'

```
Please note the **'do some magic'** portion. This ought to be replaced with actual implementation what you would
like your REST call to be really doing. In reality this could be some call to a backend database or datastore;
calling to another API; or even calling another REST service from another location. In this example we simply
retrieve the cpu model information from the hosting server. So fill in the following code:

```python
import os, platform, subprocess, re

def get_processor_name():
    if platform.system() == "Windows":
        return platform.processor()
    elif platform.system() == "Darwin":
        command = "/usr/sbin/sysctl -n machdep.cpu.brand_string"
        return subprocess.check_output(command, shell=True).strip()
    elif platform.system() == "Linux":
        command = "cat /proc/cpuinfo"
        all_info = subprocess.check_output(command, shell=True).strip()
        for line in all_info.split("\n"):
            if "model name" in line:
                return re.sub(".*model name.*:", "", line, 1)
    return "cannot find cpuinfo"
```

And then change the **cpu_get()** function to the following:
```python
def cpu_get():  # noqa: E501
    """cpu_get

    Returns cpu info of the hosting server # noqa: E501


    :rtype: CPU
    """
    return CPU(get_processor_name())
```
Plese note we are returning a CPU object as defined in the API and later generated by the codegen tool in
the *models* directory.

At this step we have completed the server side code development.

Step 3: Install and Run the REST Service:
-----------------------------------------
Now we can install and run the REST service. It's strongly recommended that you run this in a virtualenv
environment.

###Start a virtualenv:
```
virtualenv VENVServer
source VENVServer/bin/activate
```

###Make sure you have the latest pip:
```
pip install -U pip
```

###Install the requirements of the server side code:
```
cd swagger_example/server/cpu/flaskConnexion
pip install -r requirements.txt
```

###Install the server side code package:
Under the same directory, run:
```
python setup.py install
```

###Run the service
Under the same directory:
```
python -m swagger_server
```
You should see a message like this:
```
 * Running on http://0.0.0.0:8080/ (Press CTRL+C to quit)
```

###Verify the service using a web browser:
Open a web browser and visit:
*http://localhost:8080/api/cpu*
to see if it returns a json object with cpu model info in it.

Step 4: Generate Client Side Code and Verify
--------------------------------------------

###Client side code generation:
Generate the client side code in a similar fashion as we did for the server side code:

```
java -jar swagger-codegen-cli.jar generate \
  -i cpu.yaml \
  -l python \
  -o swagger_example/client/cpu \
  -D supportPython2=true
```

###Install the client side code package:
```
virtualenv VENVClient
source VENVClient/bin/activate
pip install -U pip
cd swagger_example/client/cpu
pip install -r requirements.txt
python setup.py install
```

###Using the client API to interact with the REST service
Under the directory *swagger_example/client/cpu* yu will find a README.md file which serves as an API
documentation with example client code in it. E.g., if we save the following code into a .py file:
```python
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
```
We can then run this to verify the calling to the REST service actually works. We are expecting to see
a return similar to this:

```
{'model': 'Intel(R) Core(TM)2 Quad CPU    Q9550  @ 2.83GHz'}
```

What's Next?
------------
* Although we develop and run the example on one localhost machine, you can separate the process into two
separate machines. E.g., on a server with external IP or even DNS name to deploy the server side code, and
on a local laptop or workstation to deploy the client side code. In this case please make changes on the API
definition accordingly, e.g., the **host** value.
* You can try expand the API definition with more resources and actions included. E.g., to include more detailed
attributes in the CPU object and to have those information provided in the actual implementation as well. Or you
could try defining totally different resources.
* The codegen tool provides a really convenient way to have the code stubs ready, which frees the developers to
focus more on the API definition and the real implementation of the business logics. Try with complex implementation
on the back end server side code to interact with a database/datastore or a 3rd party REST service.
