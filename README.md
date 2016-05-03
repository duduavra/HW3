# HW3 




 
**Grey's Anatomy Network **
**Code**

library(igraph)

ga.data <- read.csv('ga_edgelist.csv', header = T)
g <- graph.data.frame(ga.data,directed = F)

**End of code**

Q1A

i.

**Code**


betweenness<-betweenness(g)
id<-which.max(betweenness)
V(g)$name[id]

**End of code**





output: [1] "sloan"

![alt tag](/pics/driversInRaces.JPG)

ii.

**code**
closeness<-closeness(g)
id<-which.max(closeness)
V(g)$name[id]
**end of code**
output: [1] "torres"

iii

**code**
eigencetor<-eigen_centrality(g)
id<-which.max(eigencetor$vector)
V(g)$name[id]
**end of code**
output:[1] "karev"







Q1B

Walktrap algo.

i.

**code**
community<-g
oc <- walktrap.community(community)
plot(oc,community,vertex.label=membership(oc))
**end of code**

![alt tag](/graphs/1.JPG)

ii.


**code**
sizes(oc)
**end of code**
output:
Community sizes
 1  2  3  4  5  6  7 
 5 13  3  3  2  3  3 


iii

**code**
modularity(oc)
**end of code**
output:
[1] 0.5147059

FastGreedy algo.

i.

**code**
community<-g
oc <- fastgreedy.community(community)
plot(oc,community,vertex.label=membership(oc))
**end of code**

![alt tag](/graphs/2.JPG)

ii.


**code**
sizes(oc)
**end of code**
output:
Community sizes
 1  2  3  4  5  6 
10  5  4  5  5  3 


iii

**code**
modularity(oc)
**end of code**
output:
[1] 0.5947232


