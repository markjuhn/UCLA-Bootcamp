#Logistic growth in discrete time
#A script to simulate and plot the discrete logistic model

# Setup
# none needed, since program is so simple

# Set parameter values and initioal conditions, and initialize variables for output
NO <- 25
RR <- .05
ttMax <- 100 #total number of timesteps to simulate
K <- 100 #Carrying Capacity
NN <- matrix(NA, nrow = 1, ncol = ttMax + 1) # initialize variable to a vector of NA values
NN[1] <- NO #set first value to initial condition

# Loop over ttMax timesteps, using the model equation to update NN
for (tt in 1:ttMax) {
  NN[tt+1] <- (1+(RR*(1-(NN[tt])/K)))*NN[tt]
}

#Plot the results
plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")

##3.3.1 Mini exercise
discreteLogisticFun(NO = 10, rr = .05, K = 100, ttMax = 100)

#3.3.2 Mini exercise
help(par)

rdVec <- c(-0.3, 0.3, 1.3, 1.9, 2.2, 2.7)
par(mfrow = c(2,3))
for (i in rdVec) {
  discreteLogisticFun(i, 10, 100, 100)
  
}
## ii in 1:length(rdVec) iterates over 1:6, not the actual values
par(mfrow = c(1,1)) 

#3.3.3 Advanced exercise
