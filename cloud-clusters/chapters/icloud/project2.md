Project 2: Hadoop PageRank
==========================

 

Cloud Computing

Spring 2017

Goal

This assignment provides an illustration of PageRank algorithms and
Hadoop. You will then blend these applications by implementing a
parallel version of PageRank using the programming interfaces of the
Hadoop MapReduce framework.

Deliverables

You are required to turn in the following items in a zip file (username
HadoopPageRank.zip) in this assignment:

-   The source code of Hadoop PageRank you implemented.

-   Technical report (username HadoopPageRank report.docx) that
    contains:

-   The description of the main steps and data flow in your program.

-   The output file (username HadoopPageRank output.txt) which contains
    the first 10 urls along with their ranks.

xs Evaluation The point total for this project is 10, where the
distribution is as follows:

-   Completeness of your code and output (7 points)

-   Correctness of written report (3 points)

1 What is PageRank? The web search engine is a typical distributed
system on the Internet. It is designed to search for information on the
World Wide Web. The search results are generally presented in a list of
results and are often called hits. PageRank is a well-known web graph
ranking algorithm that helps Internet users sort hits by their
importance. PageRank calculates a numerical value for each element of a
hyperlinked set of webpages, which reflects the probability that a
random surfer will access that page. The process of PageRank can be
understood as a Markov Chain which requires iterative calculations to
converge. An iteration of PageRank calculates the new access probability
for each webpage based on values calculated in the previous iteration.
The process will repeat until the number of current iterations is bigger
than predefined maximum iterations, or the Euclidian distance between
rank values in two subsequent iterations is less than a predefined
threshold that controls the accuracy of the output results. 1 Figure 1:
Mathematical PageRank for a simple network in Wikipedia Figure 1 shows a
web graph consisting of 11 vertices A, B, C, D, E, F, G1, G2, G3, G4,
G5. Each vertex refers to a unique webpage, and the directed edge means
there is one link from the source webpage to the target webpage. The
percentage on each vertex represents the rank value of each webpage.
Notes You can implement a sequential PageRank that can run on desktops
or laptops. But when processing larger input data, like web graphs
containing more than a million webpages, you need to run the PageRank
application in parallel so that it can aggregate the computing power of
multiple compute nodes. Currently, in both industry and academia, the
study of large-scale web or social graphs has become increasingly
popular. In one published paper, the job execution engines that claim to
support large-scale PageRank include: MPI, Hadoop, Dryad, Twister,
Pregel. Formula Equation 1 is the formula to calculate the rank value
for each webpage. We will learn this formula by applying it to the case
in Figure 1. There are 11 webpages in Figure 1, which include: A, B, C,
D, E, F, G1, G2, G3, G4, G5. Assuming the probability distribution for a
web surfer accessing all these 11 pages in current iteration is PR(A),
PR(B), PR(C), \... PR(G5), then the probability for the surfer to access
Page B in the next iteration is:

$$PR(B) = P R(D)/2 + P R(E)/3 + P R(F)/2 + P R(C) + P R(G1)/2 + P R(G2)/2 + P R(G3)/2$$

In a general case, the PageRank value for any page u can be expressed
as: P R(u) = X v$\in$Set P R(V ) L(v)

\(1) The vertices seen in the right of the formula contain all the
webpages that point to target webpage \*u\*. The L(v) refers to the out
degree of each webpage in the vertices set. The initial rank values of
each webpage, like PR'(u), can be any double value. After several
iteration calculations, the rank values converge to the stationary
distribution regardless of what their initial values are.

2

Damping factor

The PageRank theory holds that even an imaginary surfer who is randomly
clicking on links will eventually stop clicking. The probability, at any
step, that the person will continue is a damping factor d. Various
studies have tested different damping factors, but it is generally
assumed that the damping factor will be around 0.85. The formula
considering damping factor is shown in Equation 2. N refers to the total
number of unique urls.

P R(u) = 1 - d N $+ d \times X$ v $\in$ Set P R(V) L(v)

\(2) Hadoop PageRank DataFlow In this project, we have provided a sketch
code which contains three MapReduce jobs for you to implement:

CreateGraph (done): add one column, *initial pagerank value*, to the
input pagerank adjacency matrix (AM). Then pass it to the PageRank
program to calculate the pagerank values.

PageRank (your implementation): take the transformed AM matrix and
calculate pagerank values for all pages.

Cleanup Results: remove the targetUrls column and output (sourceUrl,
pagerank value) as the final result. The detail dataflow can be seen in
Figure 2. Part 1 and Part 3 are given as full solutions in this
pipeline; you will implement the 2nd part of the PageRank program.

Figure 2: Hadoop PageRank dataflow 3 Normally for any Hadoop MapReduce
program, input data is uploaded and stored in the Hadoop Distributed
File System (HDFS) before computation in order to generate (key, value)
pairs to the mapper. Initially, the PageRank input data is stored in the
format of adjacency matrix as a file(s) in the local file system. Then
it will be uploaded to the HDFS and distributed across the compute
nodes. Hadoop framework reads the application records from HDFS with the
InputFormat interface and generates (key, value) pair input streams.
Each Map function produces zero or more intermediate (key, value) pairs
by consuming one input (key, value) pair. For this PageRank program, the
map function applies the calculation P R(v) L(V ) to each (key, value)
pair, where the key is the unique id or name of the webpage and the
value contains the current rank value of the webpage and its out link
information. Map tasks then generate intermediate (key, value) pairs,
whose value is the partial rank value of every webpage. Each reduce task
aggregates all the partial values of specific webpages by applying the
provided Equation 2. The aggregated global rank values are written back
to HDFS, which in turn is used as input in the next set of iterations,
if any. *Hadoop - PageRank* in Figure 2 shows an example for the
PageRank data processing.

Code for Hadoop PageRank You need to complete two files in the provided
pacakge inside `indiana/cgl/hadoop/pagerank/`: PageRankMap.java and
PageRankReduce.java. Code snapshots are shown below.

    1 // file : PageRankMap.java 
    2 package indiana.cgl.hadoop.pagerank ;
    3
    4 import j a v a . i o . B u f f e r e dW ri t e r ;
    5 // seede tail insource code 
    6
    7 p u bli c c l a s s PageRankMap e x t e n d s Mapper<LongWritable , Text , LongWritable , Text> {
    8
    9 // each map t a s k h a n dl e s one l i n e wi t hi n an a d j a c e n c y ma trix f i l e
    10 // key : f i l e o f f s e t
    11 // v al u e : <s o u r c e U rl PageRank#t a r g e t U rl s >
    12 p u bli c v oid map( LongWritable key , Text value , Context c o n t e x t )
    13 throws IOException , I n t e r r u p t e d E x c e p ti o n {
    14
    15 i n t numUrls = c o n t e x t . g e t C o n fi g u r a ti o n ( ) . g e t I n t ( "numUrls" , 1 ) ;
    16 S t ri n g l i n e = v al u e . t o S t ri n g ( ) ;
    17 S t r i n g B u f f e r sb = new S t r i n g B u f f e r ( ) ;
    18 // i n s t a n c e an o b j e c t t h a t r e c o r d s the i n f o rm a ti o n f o r one webpage
    19 RankRecord r r d = new RankRecord ( l i n e ) ;
    20 i n t s o u r c eU rl , t a r g e t U rl ;
    21 // double rankV alueO fS rcU rl ;
    22
    23 i f ( r r d . t a r g e t U r l s L i s t . s i z e ( ) <=0){
    24 // t h e r e i s no out d e g r e e f o r t h i s webpage ;
    25 // s c a t t e r i t s rank v al u e t o a l l o t h e r u r l s
    26 double rankValuePe rU rl = r r d . rankValue / ( double ) numUrls ;
    27 f o r ( i n t i =0; i<numUrls ; i++){
    28 c o n t e x t . w ri t e (new LongWritable ( i ) , new Text ( S t ri n g . v alueO f ( rankValuePe rU rl ) ) ) ;
    29 }
    30 } e l s e {
    31 // Write your code h e r e
    32 } // f o r
    33 c o n t e x t . w ri t e (new LongWritable ( r r d . s o u r c e U rl ) , new Text ( sb . t o S t ri n g ( ) ) ) ;
    34 }//map
    35 }
    1 // f i l e : PageRankReducer . j a v a
    2 package i n di a n a . c g l . hadoop . pagerank ;
    3
    4 import j a v a . i o . B u f f e r e dW ri t e r ;
    5 // s e e d e t a i l i n s o u r c e code
    6
    7 p u bli c c l a s s PageRankReduce e x t e n d s Reducer<LongWritable , Text , LongWritable , Text>{
    4
    8 p u bli c v oid reduce ( LongWritable key , I t e r a b l e <Text> v al u e s ,
    9 Context c o n t e x t ) throws IOException , I n t e r r u p t e d E x c e p ti o n {
    10 double sumOfRankValues = 0.0 ;
    11 S t ri n g t a r g e t U r l s L i s t = "" ;
    12
    13 i n t s o u r c e U rl = ( i n t ) key . g e t ( ) ;
    14 i n t numUrls = c o n t e x t . g e t C o n figura ti o n ( ).g e t I n t ( "numUrls" , 1 ) ;
    15
    16 // hi n t : each t u pl e may i n cl u d e rank v al u e t u pl e o r l i n k r e l a t i o n t u pl e
    17 f o r ( Text v al u e : v al u e s ) {
    18 S t ri n g [ ] strArray = v al u e . t o S t ri n g ( ) . s p l i t ( "#" ) ;
    19 // Write your code here
    20 }
    21 // c a l c u l a t e u si n g the f o rmula
    22 sumOfRankValues=0.85*sumOfRankValues+0.15*(1.0)/(double)numUrls;
    23 c o n t e x t . w ri t e ( key , new Text ( sumOfRankValues+t a r g e t U r l s L i s t ) ) ;
    24 }
    25 }
    Edit
    The sketch code is stored within the provided VirtualBox image. Use Eclipse or linux text editor vi/vim to
    add your code.
    1 $ cd / r o o t /MoocHomeworks/HadoopPageRank/
    2 $ vim s r c / i n di a n a / c g l / hadoop / pagerank /PageRankMap . j a v a
    3 $ vim s r c / i n di a n a / c g l / hadoop / pagerank /PageRankReduce . j a v a
    Compile and run your code
    Use the one-click script compileAndExecHadoopPageRank.sh provided below. Standard error messages such
    as compile errors, execution errors, etc. will be redirected on the screen. Debug them based on the returned
    messages.
    1 $ cd / r o o t /MoocHomeworks/HadoopPageRank/
    2 # u s a ge : . / compileAndExecHadoopPageRank . sh [ PageRank Input F i l e ] [ Number o f U rl s ] [ Number Of
    I t e r a t i o n s ]
    3 $ . / compileAndExecHadoopPageRank . sh PageRankDataGenerator / pagerank5000g50 . i n p u t . 0 5000 1
    View the result
    The result is generated as /root/hbaseMoocAntProject/output/project2.txt.
    1 $ cd / r o o t /MoocHomeworks/HadoopPageRank/
    2 $ c a t output 
