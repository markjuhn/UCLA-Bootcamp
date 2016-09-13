#Geometric growth
#geometricGrowthScript.R
#A script to simulate and plot the discrete logistic model

# Setup
# none needed, since program is so simple

# Set parameter values and initioal conditions, and initialize variables for output
NO <- 25
RR <- 1.05
ttMax <- 100 #total number of timesteps to simulate

NN <- matrix(NA, nrow = 1, ncol = ttMax + 1) # initialize variable to a vector of NA values
NN[1] <- NO #set first value to initial condition

# Loop over ttMax timesteps, using the model equation to update NN
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}

#Plot the results
plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")

#3.2.1 Mini exercise

#3.2.2 Exercise
