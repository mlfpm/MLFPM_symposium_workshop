#To run on https://rstudio.cloud

#Install and load packages
install.packages("data.table")
install.packages("igraph")
library(data.table)
library(igraph)

#set directory path
#setwd("C:/Users/Diane/Documents/MLFPM/Munich/workshop")

#Import data
gwas=fread("gwas_reduced.csv")
gwais=fread("gwais_reduced.csv")

#Explore data
head(gwas)
dim(gwas)
summary(gwas$P)

head(gwais)
dim(gwais)
summary(gwais$P)

#Multiple testing 
threshold_gwas=5*10^(-8) #gwas usual significance threshold
threshold_gwais=0.05/choose(38225,2) #38,225 SNPs tested
gwas=gwas[gwas$P<threshold_gwas,]
gwais=gwais[gwais$P<threshold_gwais,]

#SNP to gene Mapping
mapping=fread("mapping.csv")
gwas=merge(gwas, mapping, by="SNP")

colnames(mapping)=c("SNP1", "gene1")
gwais=merge(gwais, mapping, by="SNP1")
colnames(mapping)=c("SNP2", "gene2")
gwais=unique(merge(gwais, mapping, by="SNP2"))

#Edge filter
biofilter=fread("biofilter.csv")
gwais=merge(gwais, biofilter, by=c("gene1", "gene2"))

#Ceate unweigted network
gwais=unique(gwais[,c("gene1", "gene2")])
gwas=gwas[,"gene"]
nodes=data.frame(unique(c(gwas$gene, gwais$gene1, gwais$gene2)))
colnames(nodes)="gene"
edges=gwais
network <- graph_from_data_frame(d=edges, vertices=nodes)

#Plot
V(network)$size <- 10
V(network)$frame.color <- "white"
V(network)$label <- ""
E(network)$arrow.mode <- 0
E(network)$label <- ""
plot(network, main="Genetic analysis", cex.main=50, margin=c(0,0,0,0))
E(network)$width=2

#Largest component
comp=components(network, mode = c("weak", "strong"))
max(comp$csize)

#degree
deg=degree(network,mode="all")
averageDegree=mean(deg)
medDegree=median(deg)
averageDegree
medDegree
