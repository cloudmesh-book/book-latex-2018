Outdated: IaaS
==============

Examples and definitions are given for SaaS, PaaS, and IaaS.
Computational models must be designed with the problems and effective
resources in mind. A demonstration of cloud use for Bioinformatics shows
how clouds offer advantages of provisioning and virtual cluster support.
Overhead and performance issues are touched upon through charts showing
the use of three different virtual clusters.

Growth of Virtual Machines
--------------------------

Importance of virtualization is explored, including cross-platform
applications. Virtualization has seen rapid growth in recent years in
terms of use and services offered. Virtual machines differ from
traditional computers in that software virtualization layer (hypervisor)
runs on hardware, allowing guest OS to run on top of host OS. VMs can
run independent of hardware specifications. Four different types of VM
architecture, defined by the layer which the virtual machine monitor
(VMM) runs on. VM is identical to physical machines and can be saved and
stored, as well as migrated across hardware.

[:clapper: Cloud 10:16 Growth of Virtual Machines](https://www.youtube.com/watch?v=5oKoAPCXLws)

[:scroll: Cloud Page 28 Growth of Virtual Machines](https://drive.google.com/open?id=0B88HKpainTSfQU1uQmxZWHdWQ1k)

[:scroll: Cloud Page 28 Growth of Virtual Machines - pptx](https://drive.google.com/open?id=0B88HKpainTSfb1ZhWG4zTEg0SVk)

Implementation Levels
---------------------

Virtualization can be implemented on five levels: application, library,
OS, hardware, and instruction. Their benefits are compared in terms of
performance, flexibility, complexity, and isolation. A layout is
provided for the Linux virtualization layer, OpenVZ (OS level), which
creates virtual private servers. CUDA is a high performance computing
library, not designed for VMs; vCUDA is a virtual layer that allows
interaction between CUDA and VMs, creating a virtual CUDA library.

[:clapper: Cloud 7:57 Implementation Levels](https://www.youtube.com/watch?v=Le-kv-eAhvg)

[:scroll: Cloud Page 41 Implementation Levels](https://drive.google.com/open?id=0B88HKpainTSfQU1uQmxZWHdWQ1k)

[:scroll: Cloud Page 41 Implementation Levels - pptx](https://drive.google.com/open?id=0B88HKpainTSfb1ZhWG4zTEg0SVk)


Tools and Mechanisms
--------------------

A list of major hypervisors is given. Type 1 hypervisor resides on the
bare metal computer, while Type 2 runs over the host OS. XEN is an open
source hardware level hypervisor: consists of hypervisor, kernel, and
application. Domain0 in XEN is a VM that manages other VMs. Two types of
hardware virtualization: full virtualization and host-based
virtualization. Para-virtualization does not need to modify the guest OS
like full virtualization and works through hypercalls. An example is the
ESX server from VMware.

[:clapper: Cloud 7:32 Tools and Mechanisms](https://www.youtube.com/watch?v=VYz5rp5HDVE)

[:scroll: Cloud Page 47 Tools and Mechanisms](https://drive.google.com/open?id=0B88HKpainTSfQU1uQmxZWHdWQ1k)

[:scroll: Cloud Page 47 Tools and Mechanisms - pptx](https://drive.google.com/open?id=0B88HKpainTSfb1ZhWG4zTEg0SVk)

CPU, Memory & I/O Devices
-------------------------

A hybrid approach to virtualization involves offloading some tasks to
the hardware to reduce overhead. This can be combined with
para-virtualization for even greater effects. In a guest OS, the VMM
provides shadow page tables to transfer virtual memory to machine
memory. An example is shown in the Intel Extended Page Table. A
virtualization layer for an I/O device is possible, allowing it to act
like a physical device and manage host and guest addresses, shown in a
detailed VMware example.

[:clapper: Cloud 6:41 CPU, Memory \& I/O Devices](https://www.youtube.com/watch?v=I_J4eUUavSY)

[:scroll: Cloud Page 58 CPU, Memory \& I/O Devices](https://drive.google.com/open?id=0B88HKpainTSfQU1uQmxZWHdWQ1k)

[:scroll: Cloud Page 58 CPU, Memory \& I/O Devices - pptx](https://drive.google.com/open?id=0B88HKpainTSfb1ZhWG4zTEg0SVk)

Clusters and Resource Management
--------------------------------

Characteristics of VM clusters are listed, including the ability to run
multiple VMs on the same node and size alteration. Physical clusters are
linked through nodes, while virtual clusters can be linked through
physical or virtual nodes and can be replicated in virtual servers.
Prepackaged OS can be installed in a virtual cluster. Should a VM fail
for any reason, its image can be migrated to a new host so work is not
lost. An example of this is demonstrated with XEN.

[:clapper: Cloud 5:07 Clusters and Resource Management](https://www.youtube.com/watch?v=Mn9pgGtFy4g)

\slides{Cloud}{Page 66}{Clusters and Resource Management}{https://drive.google.com/open?id=0B88HKpainTSfQU1uQmxZWHdWQ1k}
\slides{Cloud}{Page 66}{Clusters and Resource Management - pptx}{https://drive.google.com/open?id=0B88HKpainTSfb1ZhWG4zTEg0SVk}
Data Center Automation
----------------------

Whole data centers can be virtualized, enabling for the construction of
private clouds. Some tools for Infrastructure as a Service clouds are
Nimbus, Eucalyptus, OpenNebula, and vSphere. Eucalyptus is shown in
greater detail. Trust issues in cloud security are answered in virtual
machines. Suggested reading material is provided at the end.

[:clapper: Cloud 3:30 Data Center Automation](https://www.youtube.com/watch?v=mvXBRvTwAVg)

\slides{Cloud}{Page 74}{Data Center Automation}{https://drive.google.com/open?id=0B88HKpainTSfQU1uQmxZWHdWQ1k}
\slides{Cloud}{Page 74}{Data Center Automation - pptx}{https://drive.google.com/open?id=0B88HKpainTSfb1ZhWG4zTEg0SVk}
Clouds in the Workplace
-----------------------

Clouds run as servers for data storage and sharing on the Internet in an
on-demand capacity. Cloud services are scalable depending on the
client's needs, allowing for a seemingly limitless source of computing
power that can expand or shrink to meet financial demands. Some examples
of cloud services are LinkedIn, Amazon S3, and Google App Engine.
Different variations of clouds like IaaS and PaaS are offered by both
open source and commercial providers. Cloud systems are composed of
separate elements like Eucalyptus, Xen and VMware.

[:clapper: Cloud 7:13 Clouds in the Workplace](https://www.youtube.com/watch?v=Endt6mWUfEo)

\slides{Cloud}{Page 1}{Clouds in the Workplace}{https://drive.google.com/open?id=1kkTi8YXMR7cPR-9nWgnj9UgkXm4rUfHm}
Checklists and Challenges
-------------------------

The capabilities of several IaaS cloud structures like Amazon EC2 or
PaaS like Microsoft Azure are listed. Public and private clouds share
certain features; the main difference is public clouds are owned by
service providers while private clouds are offered by individual
corporations. Certain enabling technologies are required for clouds to
provide quick and scalable computing. These include virtual cluster
provisioning and multi-tenant environments. PaaS demands the capability
to process huge amounts of data as in the case of web searches. Some
challenges faced by cloud computing include vendor lock-in owing to lack
of standard APIs and metrics; for scientists, there is uncertainty about
whether experiments can be reproduced effectively in different cloud
environments. However there are distinct advantages clouds potentially
have to offer: standardized APIs can eliminate lock-in, and encryption
offers data confidentiality.

[:clapper: Cloud 9:08 Checklists and Challenges](https://www.youtube.com/watch?v=cwtWpZcWuQ0)

\slides{Cloud}{Page 11}{Checklists and Challenges}{https://drive.google.com/open?id=1kkTi8YXMR7cPR-9nWgnj9UgkXm4rUfHm}
Data Center Setup
-----------------

Huge data centers enable cloud computing, containing up to a million
servers. Large data centers charge less for their services than small
ones. A diagram illustrates the typical setup of a cloud; rack space on
the bottom, on top of which are load balancers, then excess routers and
border routers. The next figure compares cost effectiveness in a
traditional IT model to a cloud. Other figures display small server
clusters and a typical data center arrangement, including emergency
power supply and cooling system. A chart shows the power consumption
based on CPU, disk, etc. Disks in warehouse servers may be onsite or
attached to outside connections like InfiniBand. Switches can form an
array of racks. The distribution of memory across a local, rack, or
array server in warehouse server setup is listed.

[:clapper: Cloud 7:49 Data Center Setup](https://www.youtube.com/watch?v=zBVtXzqF2ew)

\slides{Cloud}{Page 16}{Data Center Setup}{https://drive.google.com/open?id=1kkTi8YXMR7cPR-9nWgnj9UgkXm4rUfHm}
Cultivating Clouds
------------------

Power utilization effectiveness (PUE) for a warehouse is determined by
comparing it to IT power usage. Racks can contain 40 servers, shipping
containers can have up to 1,000 servers; a data center could take 2
years to construct. Warehouse scale computing has greater economy of
scale than data centers by reducing network and administrative costs.
Individual users can interact with clouds in the SaaS model, while
organizations use PaaS. Clouds generally use VMs to recover from system
failures. It is predicted that the cloud job market and demand for
clouds will experience great growth in the future. Clouds have become
ubiquitous in all aspects of the private and public sector. In the
future clouds must take into account user privacy, data security and
copyright protection.

[:clapper: Cloud 5:10 Cultivating Clouds](https://www.youtube.com/watch?v=zxoqRdvXM28)

\slides{Cloud}{Page 15}{Cultivating Clouds}{https://drive.google.com/open?id=1tTiWbi5_elBXmB--wMiCCB-3KtJa50AP}
\slides{Cloud}{Page 1}{Cultivating Clouds - Conclusions}{https://drive.google.com/open?id=15ofQSh3-BQNzTeycnEgKh5UXqGR3YMiz}
