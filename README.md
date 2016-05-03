# HW3 




 
**Grey's Anatomy Network **
**Code**

library(igraph)

g<-read.graph("MyLinkedIn.gml",format=c("gml"))

**End of code**

Q1A

i.

**Code**


betweenness<-betweenness(g)
id<-which.max(betweenness)
V(g)$label[id]

**End of code**




**Code**

barplot(table(filings$Driver$nationality), col="wheat", main = "Number of drivers in each country")

**End of code**



output: [1] "sloan"

![alt tag](/pics/driversInRaces.JPG)

