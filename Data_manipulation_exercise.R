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
sort_pvals <- (sort(pvals))

#f
log_sort_pvals <- -log10(sort_pvals)
log_exp_pvals <- -log10(exp_pvals)

#g
plot(log_exp_pvals,log_sort_pvals)

#h
plot(log_exp_pvals,log_sort_pvals)
abline(a = 0, b = 1)

#i
plot(log_exp_pvals,log_sort_pvals,pch=19, 
     xlab = "-log10(expected P-value",
     ylab = "-log10(observed P-value",
     cex.lab=1.2,cex.axis=1.2)
abline(a = 0, b = 1, lwd = 4, col = "red", lty=2)

#2
#a
zz=read.table('pheno.sim.2014-2.txt',header=TRUE)

#b
first_quantile <- quantile(zz$glucose_mmolperL, 0.25)
first_quantile
#value is 4.768756

#c
third_quantile <- quantile(zz$glucose_mmolperL, 0.75)
third_quantile
#value is 7.354975

#d
plot(density(zz$glucose_mmolperL),xlab = "Blood glucose levels",
     main = "Blood glucose levels density plot", lwd = 3, cex.lab=1.2,cex.axis=1.2)
abline(v=first_quantile,lty=2,lwd=3,col=2)
abline(v=third_quantile,lty=2,lwd=3,col=4)
