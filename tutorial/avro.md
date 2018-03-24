# Apache Avro (with Python) Tutorial

## hid-sp18-405 

## Remarks
* This tutorial illustrates using Avro to serialize and deserialize data
* The main example is borrowed from [Apache Avro 1.8.2 Getting Started (Python)](http://avro.apache.org/docs/1.8.2/gettingstartedpython.html) and using Python2
* For each part of this tutorial, instructions corresponding to Python3 is also mentioned
* Avro Python library does not support code generation, while Avro used with Java supports code generation, see [Apache Avro™ 1.8.2 Getting Started (Java)](http://avro.apache.org/docs/1.8.2/gettingstartedjava.html) for details
* Avro provides a convenient way to represent complex data structures within a Hadoop MapReduce job. Detail is in [Apache Avro™ 1.8.2 Hadoop MapReduce guide](http://avro.apache.org/docs/1.8.2/mr.html)

## Introduction

[Apache Avro](http://avro.apache.org/) is a data serialization system, which provides the following features:
* Rich data structures.
* A compact, fast, binary data format.
* A container file, to store persistent data.
* Remote procedure call (RPC).
* Simple integration with dynamic languages. 

Avro relies on schemas, which are defined with JSON . This facilitates implementation in languages that already have JSON libraries.

Avro provides functionality similar to systems such as [Thrift](http://thrift.apache.org/), [Protocol Buffers](https://github.com/google/protobuf), etc. Avro differs from these systems in 3 aspects, namely *Dynamic typing*, 
*Untagged data* and *No manually-assigned field IDs*. Detailed explanation can be found [here](http://avro.apache.org/docs/1.8.2/)

Avro implementations for C, C++, C#, Java, PHP, Python, and Ruby can be downloaded from the [Apache Avro Releases page](http://avro.apache.org/releases.html). This tutorial will use **Python** with the release **Avro 1.8.2** as an exmaple. 

## Download, Unzip and Install

* One can download and unzip the file *avro-1.8.2.tar.gz* from [here](http://mirrors.ocf.berkeley.edu/apache/avro/avro-1.8.2/py/)

* To unzip, using linux:
    
        tar xvf avro-1.8.2.tar.gz

  using MacOS:

        gunzip -c avro-1.8.2.tar.gz | tar xopf -

* cd into the directory and install using the following:

        cd avro-1.8.2
        python setup.py install

* To check successful installation, import avro in python without error message: 
    
        python
        >>> import avro

* This above instruction is for Python2. If one is using Python3, download *avro-python3-1.8.2.tar.gz* from [here](http://mirrors.sonic.net/apache/avro/avro-1.8.2/py3/)m the unzip and install procedure is the same.

## Defining a schema

Use a simple schema,(from [Avro doc](http://avro.apache.org/docs/1.8.2/gettingstartedpython.html)) as an example: paste the following lines into an empty text file with the name it *user.avsc*

        {"namespace": "example.avro",
        "type": "record",
        "name": "User",
        "fields": [
            {"name": "name", "type": "string"},
            {"name": "favorite_number",  "type": ["int", "null"]},
            {"name": "favorite_color", "type": ["string", "null"]}
            ]
        }

This schema defines a record representing a hypothetical user, for more information on schema files and how to specify name and type of a record can be found at  [record specification](http://avro.apache.org/docs/1.8.2/spec.html#schema_record)

## Serializing 

The following piece of python code illustrates serialization of some data

        import avro.schema
        from avro.datafile import DataFileWriter
        from avro.io import DatumWriter

        schema = avro.schema.parse(open("user.avsc", "rb").read())

        writer = DataFileWriter(open("users.avro", "wb"), DatumWriter(), schema)
        writer.append({"name": "Alyssa", "favorite_number": 256})
        writer.append({"name": "Ben", "favorite_number": 7, "favorite_color": "red"})
        writer.close()

The code does the following:
* imports required modules
* reads the schema *user.avsc* (make sure that the schema file is placed in the same directory as the python code)
* create a *DataFileWriter* called writer, for writing serialized items to a data file on disk
* use *DataFileWriter.append()* to add data points to the data file. Avro records are represented as Python dicts.
* The resulting data file saved on the disk is named *users.avro*
* This above instruction is for Python2. If one is using Python3, change
        schema = avro.schema.parse(open("user.avsc", "rb").read())
to:
        schema = avro.schema.Parse(open("user.avsc", "rb").read())
since the method name has a different case in Python3.

## Deserializing

The following piece of python code illustrates deserialization 

        from avro.datafile import DataFileReader
        from avro.io import DatumReader

        reader = DataFileReader(open("users.avro", "rb"), DatumReader())
        for user in reader:
            print user
        reader.close()

The code does the following:
* imports required modules
* Use *DatafileReader* to read the serilaized data file *users.avro*, it is an iterator
* returns the data in a python dict
* This above instruction is for Python2. If one is using Python3, change **print user** to **print (user)**, that is the syntax change in Python.

The output should look like:

        writer.append({"name": "Alyssa", "favorite_number": 256})
        writer.append({"name": "Ben", "favorite_number": 7, "favorite_color": "red"})












