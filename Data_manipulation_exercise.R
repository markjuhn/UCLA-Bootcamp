## Plotting and genetic variation data analysis exercise, Assignment 2
setwd("~/Documents/UCLA-Bootcamp")
#1

#a 
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-2.txt',header=TRUE)
snps=as.matrix(snpsDataFrame)

compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}

chisqs=apply(snps,1,compute_chisquare)
pvals=pchisq(chisqs,1,lower.tail=FALSE)

#b
#Find the proportions
zeropointfive <- sum(pvals <0.05)/length(pvals)
zeropointzeroone <- sum(pvals <0.01)/length(pvals)
zeropointzerozeroone <- sum(pvals <0.001)/length(pvals)

#c
#Find number of SNPs
num_pval <- length(pvals)

#d

#create a vector
exp_pvals <- c()
for (i in 1:num_pval) {
  exp_pvals <- c(exp_pvals, i/num_pval)
}

#e
a <- c(1, 3, 4,2,5)
sort(a)
head(sort(pvals))
head(pvals)
# sort this

