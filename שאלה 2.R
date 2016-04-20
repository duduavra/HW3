library(igraph)

g<-read.graph("MyLinkedIn.gml",format=c("gml"))

betweenness<-betweenness(g)
id<-which.max(betweenness)
V(g)$label[id]

closeness<-closeness(g)
id<-which.max(closeness)
V(g)$label[id]

eigencetor<-eigen_centrality(g)
id<-which.max(eigencetor$vector)
V(g)$label[id]

community<-g
oc <- walktrap.community(community)
plot(oc,community,vertex.label=membership(oc))
sizes(oc)
modularity(oc)

oc<-fastgreedy.community(community)
plot(oc,community,vertex.label=membership(oc))
sizes(oc)
modularity(oc)
