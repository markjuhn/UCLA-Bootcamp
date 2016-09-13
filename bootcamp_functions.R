#geometric_growth.R
#Function version
#Geometric Growth Function (Rate, Initial, End Time) 
##DO WE INCLUDE TIME AS AN ARGUMENT?????
geometricGrowthFun <- function(RR, NO, ttMax) {
  # NO <- starting pop
  # RR <- rate of growth
  # ttMax <- Max time
  NN <- matrix(NA, nrow = 1, ncol = ttMax + 1)
  NN[1] <- NO
  
  for (i in 1:ttMax) {
    NN[i + 1] <- RR*NN[i]
  }
  
  #Plot the results
  plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")
  # Need (ttMax+1), 1:ttMax+1 just adds 1 to 1:ttMax
}

#Discrete Logistic Function (r, pop initial, carrying capacity, time)
##AGAIN, DO WE INITIALIZE ttMax?????
discreteLogisticFun <- function(rr, NO, K, ttMax) {
 
  NN <- matrix(NA, nrow = 1, ncol = ttMax + 1) # initialize variable to a vector of NA values
  NN[1] <- NO #set first value to initial condition
  
  # Loop over ttMax timesteps, using the model equation to update NN
  for (tt in 1:ttMax) {
    NN[tt+1] <- (1+(rr*(1-(NN[tt])/K)))*NN[tt]
  }
  
  #Plot the results
  plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")
}
                                
                