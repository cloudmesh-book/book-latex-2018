Selected Cloud Computing Lectures
=================================

Cloud and MapReduce
-------------------

This lecture gives a brief introduction of Infrastructure as a Service
(IaaS), Platform as a Service (PaaS), and Software as a Service (PaaS)
and MapReduce on clusters. Google systems are also described regarding
to paralle processing and MapReduce communication patterns are explained
like Embarrassingly Parallel, Classical MapReduce, Iterative Reductions
and Loosely Synchronous e.g. MPI.

\video{Cloud}{10:17}{Cloud and MapReduce}{https://www.youtube.com/watch?v=_irz3v1gT-A}
\slides{Cloud}{Page 25}{IaaS, PaaS and SaaS}{https://drive.google.com/open?id=1eXWtNlQ_jgeq_nVS_9B7MTaiDjzddXjC}
Hadoop Framework
----------------

Hadoop components are explained i.e. JobTracker, TaskTracker, MapTask,
ReduceTask including HDFS.

\video{Cloud}{8:32}{Hadoop Components including HDFS}{https://www.youtube.com/watch?v=Vuroqly6FTE}
\slides{Cloud}{Page 15}{Hadoop Components including HDFS}{https://drive.google.com/open?id=0B88HKpainTSfMnpCelpNQUpNdVE}
\slides{Cloud}{Page 15}{Hadoop Components including HDFS - pptx}{https://drive.google.com/open?id=0B88HKpainTSfTVlNRzRMemNaZEU}
Hadoop Framework II
-------------------

A detailed diagram of the MapReduce job framework is given. This
includes task status updates, shuffling, and writing data to nodes.
MapReduce is a C++ framework, while Hadoop is written in Java. Shuffling
and sorting occurs in the map phase. Reduce reads and writes files to
HDFS, and the merger generates the final result. The second Quiz is
given at the end.

\video{Cloud}{9:25}{Hadoop Framework II}{https://www.youtube.com/watch?v=KWLY_maNEPA}
\slides{Cloud}{Page 8}{Hadoop Framework II}{https://drive.google.com/open?id=0B88HKpainTSfd3hkTG4yY2FYUVE}
\slides{Cloud}{Page 8}{Hadoop Framework II - pptx}{https://drive.google.com/open?id=0B88HKpainTSfcUkwN0l1VHBEdlU}
Walk Through MapReduce: Step-by-Step Hadoop Tasks
-------------------------------------------------

This lecture gives a walk through explanation of map and reduce task
under Hadoop and HDFS framwork. Map stage starts with Hadoop Distributed
File System (HDFS) where stores key value pairs assigned to the data
blocks. In the next stage, the combiner reduces data size and the
partitioner determines distribution of keys among reducers. Intermediate
data is stored in a circular buffer before being sent to reduce tasks.
In detail, Shuffle and Merge are used to order and reduce size of
intermediate data. The last stage, Reduce, handles each group of output
data, per key, in parallel.

\video{Cloud}{11:01}{Hadoop Tasks}{https://www.youtube.com/watch?v=UN4t3tvdjms}
\slides{Cloud}{Page 24}{Hadoop Tasks}{https://drive.google.com/open?id=0B88HKpainTSfMnpCelpNQUpNdVE}
\slides{Cloud}{Page 24}{Hadoop Tasks - pptx}{https://drive.google.com/open?id=0B88HKpainTSfTVlNRzRMemNaZEU}
Google File System and BigTable
-------------------------------

THis lecture reviews papers in MapReduce developments such as Google
File System (GFS), and BigTable and introduces other research projects
e.g. Microsoft Dryad, a distributed execution engine for data parallel
applications. In Google File System, data chunks, metadata, and replicas
are briefly discussed.

\video{Cloud}{9:43}{GFS and BigTable}{https://www.youtube.com/watch?v=5YmjrhEFQsk}
\slides{Cloud}{Page 16}{GFS and BigTable}{https://drive.google.com/open?id=0B88HKpainTSfd3hkTG4yY2FYUVE}
\slides{Cloud}{Page 16}{GFS and BigTable - pptx}{https://drive.google.com/open?id=0B88HKpainTSfcUkwN0l1VHBEdlU}
MapReduce Example - WordCount
-----------------------------

MapReduce is revisited with the WordCount example to demonstrate how it
actually works in the map and reduce phase.

\video{Cloud}{9:07}{MapReduce WordCount}{https://www.youtube.com/watch?v=sSIGaDaulvA}
\slides{Cloud}{Page 6}{MapReduce WordCount}{https://drive.google.com/open?id=0B88HKpainTSfMnpCelpNQUpNdVE}
\slides{Cloud}{Page 6}{MapReduce WordCount - pptx}{https://drive.google.com/open?id=0B88HKpainTSfTVlNRzRMemNaZEU}
MapReduce Example - Twister
---------------------------

At 5:26 of the video, Twister, in-memory iterative MapReduce framework,
is introduced with MDS (Multidimensional Scaling) example to process 30K
metagenomics dataset. This is part of published work by Zhang, Bingjing,
et al. \"Applying twister to scientific applications.\" Cloud Computing
Technology and Science (CloudCom), 2010 IEEE Second International
Conference on. IEEE, 2010. In addition, there is an additional
walk-through tutorial recorded on Youtube,

<https://www.youtube.com/watch?v=jTUD_yLrW1s>

which includes a 3-dimensional representation of data cluster sorting by
the PlotViz program developed by Indiana University. The architecture
between Hadoop 1 and 2 are explained in the beginning along with
MapReduce.

\video{Cloud}{12:01}{Twister Introduction}{https://www.youtube.com/watch?v=6vkgvGtyv4Q}
\slides{Cloud}{Page 1}{MapReduce and Twister}{https://drive.google.com/open?id=0B88HKpainTSfMnpCelpNQUpNdVE}
\slides{Cloud}{Page 1}{MapReduce and Twister}{https://drive.google.com/open?id=0B88HKpainTSfTVlNRzRMemNaZEU}
Embarrassingly Parallel Example, Basic Local Alignment Search Tool (BLAST)
--------------------------------------------------------------------------

The bioinformatics tool, BLAST (Basic Local Alignment Sequence Tool) is
a good example of embarrassingl parallel. This lecture shows an use case
with data collected from the Seattle Children's Hospital to find similar
sequences in databases in parallel. Blast introduction starts at 2:12.
BLAST can be parallelized in several ways: multi-thread, query
segmentation, and database segmentation.

\video{Cloud}{8:27}{Introduction to BLAST}{https://www.youtube.com/watch?v=i3H9HmUYfq8}
\slides{Cloud}{Page 1}{Introduction to BLAST}{https://drive.google.com/open?id=0B88HKpainTSfdnFvY1V3dlFTRlE}
\slides{Cloud}{Page 1}{Introduction to BLAST - pptx}{https://drive.google.com/open?id=0B88HKpainTSfMDAwZm5uQlZWckU}
\video{Cloud}{4:44}{BLAST Parallelization}{https://www.youtube.com/watch?v=isc0MjkwTlk}
\slides{Cloud}{Page 13}{BLAST Parallelization}{https://drive.google.com/open?id=0B88HKpainTSfdnFvY1V3dlFTRlE}
\slides{Cloud}{Page 13}{BLAST Parallelization - pptx}{https://drive.google.com/open?id=0B88HKpainTSfcUkwN0l1VHBEdlU}
MapReduce Optimization - Data Locality
--------------------------------------

A brief review is given of previous topics. As opposed to MPI and HPC,
MapReduce brings the computation to the data, rather than vice-versa.
This is done to limit energy usage and network congestion. Several
factors such as number of nodes and tasks can impact data locality. An
equation to improve data locality is tested in an experiment, whose
results are given. By default, Hadoop determines scheduling of tasks to
available slots in terms of best local composition, not global.

\video{Cloud}{8:36}{Data Locality}{https://www.youtube.com/watch?v=RqLA7_asK50}
\slides{Cloud}{Page 10}{Data Locality}{https://drive.google.com/open?id=0B88HKpainTSfT28zLTdKYWhGdGM}
\slides{Cloud}{Page 10}{Data Locality - pptx}{https://drive.google.com/open?id=0B88HKpainTSfVGdyVzNjTzdfb3c}
MapReduce Optimization - Optimal Data Locality
----------------------------------------------

Global data optimization can be achieved through a proposed algorithm
given here. Task, slot, and cost are factors in this algorithm. Network
bandwidth must also be taken into consideration when assigning tasks to
slots. Linear Sum Assignment Problems require greater time to finish
when matrix size is increased. Two different scheduling algorithms were
designed to improve the original one in Hadoop. An experiment was run
comparing all three, with the network topology-aware algorithm clearly
outperforming the others.

\video{Cloud}{4:17}{Optimal Data Locality}{https://www.youtube.com/watch?v=Ok8vdrFXo5w}
\slides{Cloud}{Page 17}{Optimal Data Locality}{https://drive.google.com/open?id=0B88HKpainTSfT28zLTdKYWhGdGM}
\slides{Cloud}{Page 17}{Optimal Data Locality - pptx}{https://drive.google.com/open?id=0B88HKpainTSfVGdyVzNjTzdfb3c}
MapReduce Optimization - Task Granularity
-----------------------------------------

Size of data blocks affects load balancing and overhead. Using Bag of
Divisible Tasks method, tasks can be split into sub-tasks and
distributed amongst slots to maximize efficiency. When splitting tasks,
one must take into account when and which tasks to split, as well as how
and how many. In our current proposed algorithm, tasks are split until
each slot is occupied. It also uses ASPK (Aggressive Scheduling with
Prior Knowledge) to split larger tasks first and when the performance
gain is deemed optimal. Optimal and Expected Remaining Job Execution
Time can help determine task splitting. Several examples are offered
with either single or multiple jobs.

\video{Cloud}{9:51}{Task Granularity}{https://www.youtube.com/watch?v=u9UpgTnOZz4}
\slides{Cloud}{Page 29}{Task Granularity}{https://drive.google.com/open?id=0B88HKpainTSfT28zLTdKYWhGdGM}
\slides{Cloud}{Page 29}{Task Granularity - pptx}{https://drive.google.com/open?id=0B88HKpainTSfVGdyVzNjTzdfb3c}
MapReduce Optimization - Resource Utilization and Speculative Execution
-----------------------------------------------------------------------

Resource stealing involves appropriating cores that are kept in reserve
on separate nodes and returning them when the computation is over.
Speculative execution addresses fault tolerance; when the master node
notices a task is running slowly, it will start a speculative task which
can take over if it is determined the original task will not finish in
time. Overuse of speculative tasks can lead to poor data locality and
higher energy demands.

\video{Cloud}{3:52}{Resource Utilization and Speculative Execution}{https://www.youtube.com/watch?v=wWyFiqDIYus}
\slides{Cloud}{Page 46}{Resource Utilization and Speculative Execution}{https://drive.google.com/open?id=0B88HKpainTSfT28zLTdKYWhGdGM}
\slides{Cloud}{Page 46}{Resource Utilization and Speculative Execution - pptx}{https://drive.google.com/open?id=0B88HKpainTSfVGdyVzNjTzdfb3c}
Appendix; SIMD vs MIMD;SPMD vs MPMD
-----------------------------------

Four types of parallel models: SISD (traditional PCs), SIMD (GPUs), MISD
(shuttle flight control computer), MIMD (distributed systems).
Point-to-point (P2P) communication in MPI is used as an example of
parallelization. Each successive process adds its own stamp to the data
before passing it on to the next. Matrix multiplication for scientific
applications differs from the norm in that data is sent in a matrix, not
a string. WordCount functions in a map/reduce pattern. These are all
types of SIMD. SPMD and MPMD are two other types of model.

\video{Cloud}{9:42}{SIMD vs MIMD;SPMD vs MPMD}{https://www.youtube.com/watch?v=zHQiR56Zmtc}
\slides{Cloud}{Page 1}{SIMD vs MIMD;SPMD vs MPMD}{https://drive.google.com/open?id=0B88HKpainTSfT28zLTdKYWhGdGM}
\slides{Cloud}{Page 1}{SIMD vs MIMD;SPMD vs MPMD - pptx}{https://drive.google.com/open?id=0B88HKpainTSfVGdyVzNjTzdfb3c}
