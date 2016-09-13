#Plotting Exercise 1

#1
get_height <- function(n) {
  heights <- rnorm(n, 69, 10)
  return(heights)
}
## I'm not sure how to assign a variable that will persist outside the function
## without assigning a global variable, which is bad
get_height(10)

#2
get_height <- function(n) {
  heights <- rnorm(n, 69, 10)
  return(mean(heights))
}

#3
get_height <- function(n) {
  heights <- rnorm(n, 69, 10)
  cat("The mean height is", mean(heights), '\n')
}

#4
mean_heights_100 <- numeric(length = 1000)
for (i in 1:1000) {
  heights <- rnorm(100, 69, 10)
  mean_heights_100[i] <-mean(heights)
}

#5
mean_heights_1000 <- numeric(length = 1000)
for (i in 1:1000) {
  heights <- rnorm(1000, 69, 10)
  mean_heights_1000[i] <-mean(heights)
}
