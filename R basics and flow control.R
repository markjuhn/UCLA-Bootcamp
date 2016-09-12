## R basics and flow control

library(ape)
tt <- read.tree("tree.tre")
attributes(tt)
inpath = ("data.txt")
dd <- read.table(inpath, header = T, sep = '\t', as.is = T);
head(dd)
str(dd)
dim(dd)
length.dd <- dim(dd[1])
length.dd
help(runif)

size <- runif(length.dd[1]) 
#I changed something here
#Before it was size <- runif(length.dd), but they wanted 92 random variables

head(dd)

dd <- cbind(dd, size)
names(dd)
head(dd$species)
tail(dd$species)

head(rownames(dd))
rownames(dd) <- dd$species
head(dd)
str(dd)

mpfs <- which(dd$mode == 'MPF')
mpf_swimmers <- dd[mpfs,]
head(mpf_swimmers)
