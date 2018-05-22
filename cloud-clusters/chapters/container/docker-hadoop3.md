Apache Hadoop Latest (3.0.1) using Docker
=========================================

Apache Hadoop 3.0.1 is the latest release (25 March, 2018) which
includes significant enhancements over the previous version of Hadoop
2.x.

This section provides a separated Dockerfile to build hadoop 3.0.1 but
the configurations and examples are same except a few minor changes
which are:

\- CentOS 7 - systemctl - Java SE Development Kit 8

Draft: Building Hadoop 3.0.1 using Docker
-----------------------------------------

Build a docker image by Dockerfile from:

    mkdir hadoop3.0.1
    cd hadoop3.0.1
    wget https://raw.githubusercontent.com/cloudmesh/book/master/examples/docker/hadoop/3.0.1/Dockerfile
    docker build -t cloudmesh/hadoop:3.0.1 .

The complete docker image for Hadoop 3.0.1 consumes the storage size of
1.5GB.

    \$ docker images
    REPOSITORY                      TAG                 IMAGE ID            CREATED             SIZE
    cloudmesh/hadoop                3.0.1               ba2c51f94348        20 hours ago        1.5GB

Start a Hadoop Container with Interactive Shell
-----------------------------------------------

    docker run -it cloudmesh/hadoop:3.0.1 /etc/bootstrap.sh -bash
    %docker run -it lee212/e222 /etc/bootstrap.sh -bash

The details of the new version is available from the official site here:
http://hadoop.apache.org/docs/r3.0.1/index.html

Examples
--------

The statistics and PageRank examples are identical to the Hadoop 2.7.5
on Docker [\[c:hadoop-docker\]](#c:hadoop-docker){reference-type="ref"
reference="c:hadoop-docker"}.
