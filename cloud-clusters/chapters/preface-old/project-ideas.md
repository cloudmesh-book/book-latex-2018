Project Ideas
=============

For the format and the details about artifacts produced in general for
projects, please see
Section [\[s:project-format\]](#s:project-format){reference-type="ref"
reference="s:project-format"}. This includes the length and the paper
format.

The paper format is included in hid-sample project-report (e.g. same as
paper):

\URL{https://github.com/cloudmesh-community/hid-sample/tree/master/project-paper}
The code and the paper are to be added in your hid folder. YOu will be
creating lower case directories called `project-paper` and
`project-code`. You will not check in any data, but instead create
scripts that fetch the data.

For an example directory structure, please see

\URL{https://github.com/cloudmesh-community/hid-sample}
Certainly, you can chose from many different topics and we hope you pick
one that is suitable for you and you enjoy doing. You have the
opportunity to definitely pick a project that you enjoy doing. However
it must be related to the course. This course is not about finding the
best algorithm or copying a project from your AI or other cloud classes
you have taken at IU. It is about finding a novel project that is
related to cloud computing, big data and the deployment of the system on
cloud resources.

Project Data Restrictions
-------------------------

On Mar 8th we posted in Piazza, that there are a couple of restrictions
to the choice of the data set. We will not accept any project using the
Titanic, Wordcount, or any Kaggle dataset.

Example Projects
----------------

Example projects are available in the Volumes we published and are
listed in Section [\[S:p-intro\]](#S:p-intro){reference-type="ref"
reference="S:p-intro"}.

Register your project idea
--------------------------

Please register your project idea here:

\URL{https://docs.google.com/document/d/14L0guBfWJdRqqf1BoLw41LPg9HU3BqROFZeF43hJF_E}
Meeting with Gregor
-------------------

On March 11th we posted that you need to meet with Gregor to discuss
your projects. Many students have done this, but we are missing some
that have not yet started or postponed the idea of starting the project.
Please attend Monday March 25, sometime between 7pm to 10pm. If you can
not attend this meeting, please identify an alternative time where we
will discuss your project in a group setting. Have your project idea
ready so we can discuss it.

Project type A: NIST Rest services project
------------------------------------------

This project idea is the simplest one of the once listed in this section
as we have extensively discussed it and provided all important
information to succeed in this activity. However, this task must not be
underestimated as it requires some non trivial work as any of our other
tasks. We believe however that the efforts for it is smaller than with
other project ideas.

We have provides you with the NIST big data reference architecture. As
part of this we have identified how to create rest services. In this
project you will define a **SIGNIFICANT** set of resources and implement
the rest services for them. IN contrast to your previous assignment this
is a set of services and not just a single service. (for example just
implementing a key value store abstraction is not sufficient). A proper
project scope includes for example an abstraction of resources related
to VMs on AWS with libcloud, or VMs on Openstack with libcloud, or VMs
on Azure with libcloud, or An abstraction for data storage (not just
files, but also objects and key value pairs), the abstraction of an
accounting framework, and so forth.

In case you have not completed your swagger REST service a portion of
this project will be used to satisfy that requirement.

Project type B: Raspberry PI projects
-------------------------------------

The raspberry PI projects are divided topically by class. While 516
focusses on map reduce 616 and 524 are focussing on containers.
Exceptions could be allowed with proper reasoning.

### e516

In this project you will be developing or leveraging form an existing
tutorial developed as part of the class. You will be focussing on how to
create a Spark and/or Hadoop cluster for Raspberry Pi's in a scalable
fashion. In previous tutorials for the class students focussed on
setting this up for a small number of nodes. What we need to do now is
to expand this to a scalable solution with many hundrets of Pi's in the
cluster. Naturally login in by hand on these machines is not suitable,
but you need to automatize this process as much as possible. Your ideas
on how to do this are most welcome. There are different strategies, such
as burning all SD cards with a program on your laptop and modifying the
file system of the sd card after the burning, setting up a simple
minimal system with ssh enabled and DHCP so you can log into a named
host and use parallel commands to further provision the system, or even
PXE boot. Once you have figured out and documented this you will be
documented how to deploy a Hadoop and/or a spark cluster on the Pis.

You will then pick a data set and do a mapreduce application and measure
the performance.

In case you work in a team, each person in the team needs to add a new
deployment. Example, if you are in a 3 person team you need to do not
only do a single deployment but multiple. This could even mean that you
need to deploy it on echo which is a non Pi cluster, but you can get
great performance comparisons between your analysis on echo and the one
on the PI. Other examples could include the comparison of spark with
hadoop on PI and echo

As this project contains a significant of tutorial like activities (just
do not use the term tutorial, but in this section we describe) we
recommend that you develop the setup procedure in markdown. and not
directly in latex. However use *clean* markdown and follow the markdown
rules. We have seen in the tutorial to be delivered for this class many
wrong examples on how to not use markdown.

For this reason the length of the paper may be reduced by one page if
the set up procedure is excellent, and includes automated deployment
scripts with minimal input by hand (this requires programming).

### e616 and I524

In e616 and I524 we have essentially the same requirements as in
Section [1.6.1](#s:idea-project-pi-spark){reference-type="ref"
reference="s:idea-project-pi-spark"}, but replace map, reduce, hadoop,
and spark with containers, Docker Swarm and Kubernetes. Please remember
here you will have a cluster with docker swarm or kubernetes, It is not
sufficient to just install docker on all nodes.

All other requirements are the same as in
Section [1.6.1](#s:idea-project-pi-spark){reference-type="ref"
reference="s:idea-project-pi-spark"}.

Project type C: Data related project for Spark or Hadoop
--------------------------------------------------------

This project requires you to use one cloud IaaS resource such as
chameleon, Futuresystems Echo, AWS, or Azure.

You will be deploying on the IaaS a Spark or Hadoop cluster and
conducting based on a data set that you conduct an analysis of the data.
YOu will be benchmarking the time it costs to set up this environment as
well as benchmarking how fast the analysis is.

Project type D: Data related project for a kubernetes or swarm cluster
----------------------------------------------------------------------

This task is not for e516 students.

This project requires you to use one cloud IaaS resource such as
chameleon, Futuresystems Echo, AWS, or Azure.

You will be deploying a multi nod kuberntes or swarm cluster (in case of
echo this is already done, so you will just use it, but substitute the
deployment task with somethings else).

You will be deploying rest services on the cluster base don the Swagger
services we explained to you and benchmarking them. The rest services
are related to the Big data architecture or have significant set of
analysis components.

In case you run on echo, you just do more services than you would do if
you were running on other platforms.

One nice project would fo =r example be the automated creation of rest
services while using a function specification of python. THis way you
coudl for example look at scikit learn, write 10 use cases, use your
code generator and create for each of them the rest service. Important
would be a scalability test.

Project type E: Define your own
-------------------------------

Define your own project and discuss with us in the Monday meeting with
Gregor. A good example is a student that has chosen grapQL as the major
infrastructure component. He is developing a contributed chapter for the
handbook, a tutorial, and a deployment and benchmark of data of his
choice.

Project Idea Piazza Notes
-------------------------

In addition to the above notes we have selected some postes from piazza
in which we discussed project related activities. As they are from
different classes, we posted the content and not just the URL.

### A project idea to create a spark kubernetes cluster

On March 11 we posted in 516:

\URL{https://piazza.com/class/jbku81aeli95rz?cid=274}
Tutorial and Project Idea: Reproducible Scalable spark cluster and
benchmarking. While on the phone with others, I was asked is there a
tutorial about spark that would get 10 points.

Here is an example of such a tutorial:

\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-1/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-2/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-3/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-4/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-5/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-6/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-7/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-8/}
\URL{http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-9/}
This could naturally be the basis of your project. However you can not
just paste and copy, you need to write it as a section and not use the
word tutorial. You need to make meaningful modifications or enhancements
to it. Such as creating a Dockerfile doing all of this in an elegant
fashion without any human input other than starting the process. We know
this is possible and can be done. Then you need a dataset and test your
deployment on a variety of machines.

3 committed people can work on this.

Docker Cluster on PI Video
--------------------------

The following video is pretty interesting as it shows many of the steps
that are needed to create a docker cluster. This is regardless if you
use a cluster based on zeros, 3 B, 3B+.

\URL{https://www.youtube.com/watch?v=qSpfWP-Fgjc}
Naturally, the video shows how to do things by hand. To bring this to
the next level, One could, for example, provide a host file with the
static addresses (or create them) and use it as part of a script to
modify Vanilla SD cars that contain the vanilla OS on it.

E.g. the tutorial contains many steps that ask to manipulate things by
hand. This is unnecessary as all the steps can be provided by a script.

The reason we want everything scripted is that we like to replicate this
many many times as we want to replicate a swarm cluster for example on
100 PIs doing this on 1-4 by hand may be reasonable, but doing this on
100, we have to further automate this.

Using just 4 zeros is a good way to test this automated setup.

This could become a project. Then you just develop some swagger rest
services and try to place them on the swarm. Similar things can be done
with kubernetes.

Hadoop 3.0
----------

Please note that TAs may already have done this and if so it may no
longer be elegible. However, it could be extended upon.

Tutorial and Project Idea: Hadoop on Docker with newer version (a) use
ubuntu image, (b) use newest version of hadoop, (c) develop docker file
similar to

\URL{https://github.com/sequenceiq/hadoop-docker/blob/master/Dockerfile}
or others you can find, (d) find dataset and benchmark on various
machines.

Max 3 people can work on this, while deploying it on 3 platformas and
showcasing it works with a benchmark.

### Project Cloud Security

On February Feb 27 we posted

Before engaging in discussions about this with me read up on security
and attribute base security. Take a look at the already developed Web
services to showcase how we develop flask and swagger servers with basic
auth (needed to understand the attribute based security).

\URL{https://en.wikipedia.org/wiki/Attribute-based_access_control}
This project has three parts and could be used throughout the class for
all assignments.

Paper.

:   Survey of Attribute based security and other security for clouds
    pages = number of people \* 2 maximal 3 people (no images as usual
    in page number

Tutorial.

:   find frameworks in Python that do this. If they exist to develop a
    tutorial

Swagger.

:   develop a swagger rest service managing the attributes and entities
    in the framework

Alternative A: Project VM based.

:   : showcase this in a project that does this in a cloud framework
    using distributed virtual machines and services. Develop a tool that
    autogenerates services based on a function definition while also
    adding attribute based security.

Alternative B.

:   do the same project but instead of using VMs do it in containers.

This project has enormous potential as (a) NIST Is highly interested in
this. Publication potential of one or two papers. (b) security is hot,
and (c) cloud is hot
