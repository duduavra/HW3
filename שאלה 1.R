library(igraph)

ga.data <- read.csv('ga_edgelist.csv', header = T)
g <- graph.data.frame(ga.data,directed = F)

betweenness<-betweenness(g)
id<-which.max(betweenness)
V(g)$name[id]

closeness<-closeness(g)
id<-which.max(closeness)
V(g)$name[id]

eigencetor<-eigen_centrality(g)
id<-which.max(eigencetor$vector)
V(g)$name[id]

community<-g
oc <- walktrap.community(community)
plot(oc,community,vertex.label=membership(oc))
sizes(oc)
modularity(oc)

oc<-fastgreedy.community(community)
plot(oc,community,vertex.label=membership(oc))
sizes(oc)
modularity(oc)
