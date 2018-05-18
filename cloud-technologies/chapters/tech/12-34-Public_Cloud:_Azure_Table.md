# Public Cloud: Azure Table :o:


|          |                               |
| -------- | ----------------------------- |
| title    | Public Cloud: Azure Table     | 
| status   | 10                            |
| section  | NoSQL                         |
| keywords | NoSQL                         |



     FORMAT WRONG

Microsoft offers its NoSQL Azure Table product to the market as a
low-cost, fast and scalable data storage option
[@www-what-to-use]. Table stores data as collections of
key-value combinations, which it terms \textit{properties}.  Table
refers to a collection of properties as an \textit{entity}.  Each
entity can contain a mix of properties.  The mix of properties can
vary between each entity, although each entity may consist of no more
than 255 properties [@www-blobqueuetable].

Although data in Azure Table will be structured via key-value pairs,
Table provides just one mechanism for the user to define relationships
between entities: the entity's \textit{primary key}.  The primary key,
which Microsoft sometimes calls a \textit{clustered index}, consists
of a PartitionKey and a RowKey.  The PartitionKey indicates the group,
a.k.a partition, to which the user assigned the entity.  The RowKey
indicates the entity's relative position in the group.  Table sorts in
ascending order by the PartitionKey first, then by the RowKey using
lexical comparisons.  As a result, numeric sorting requires
fixed-length, zero-padded strings.  For instance, Table sorts
\textit{111} before \textit{2}, but will sort \textit{111} after
\textit{002} [@www-scalable-partitioning].

Azure Table is considered best-suited for infrequently accessed data
storage.



