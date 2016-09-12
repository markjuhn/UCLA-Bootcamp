#geometric_growth.R
#Function version
geometricGrowthFun <- function(RR, NO, ttMax) {
  # NO <- starting pop
  # RR <- rate of growth
  # ttMax <- Max time
  NN <- matrix(NA, nrow = 1, ncol = ttMax + 1)
  NN[1] <- NO
  
  for (i in 1:ttMax) {
    NN[i + 1] <- RR*NN[i]
  }
  
  plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")
  # Need (ttMax+1), 1:ttMax+1 just adds 1 to 1:ttMax
}




