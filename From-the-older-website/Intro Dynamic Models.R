##Introduction to Dynamic Models in R
library(deSolve)
help(lsoda)

## Exponential Growth
expGrowthODE <- function(tt, NN, pars) {
  derivs <- pars['rr'] * NN
  return(list(derivs))
}
init <- 1
tseq <- seq(0, 20, by = 0.01)
pars <- c(rr = 0.1)

expOutput <- lsoda(init, tseq, expGrowthODE, pars)
plot(expOutput[,1], expOutput[,2], col = 'blue', type = 'l')

## Logistic growth
logisticGrowthODE <- function(tt, NN, pars) {
  derivs <- pars['rr'] * NN * (1 - NN/pars['KK'])
  return(list(derivs))
}
init <- 1
tseq <- seq(0, 20, by = 0.01)
pars <- c(rr = 0.1, KK = 100)

logisticOutput <- lsoda(init, tseq, logisticGrowthODE, pars)
head(logisticOutput)
plot(logisticOutput[,1], logisticOutput[,2], col = 'blue', type = 'l')
