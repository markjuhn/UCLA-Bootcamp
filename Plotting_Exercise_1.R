#Plotting Exercise 1

#1
get_height <- function(n) {
  heights <- rnorm(n, 69, 10)
  return(heights)
}

heights <- get_height(100)

#2
get_height <- function(n) {
  heights <- rnorm(n, 69, 10)
  mean(heights)
}

#3
get_height <- function(n) {
  heights <- rnorm(n, 69, 10)
  return(mean(heights))
}

#4
mean_heights_100 <- numeric(length = 1000)
for (i in 1:1000) {
  mean_heights_100[i] <- get_height(100)
}

#5
mean_heights_1000 <- numeric(length = 1000)
for (i in 1:1000) {
  mean_heights_1000[i] <-get_height(1000)
}

#6
bins <- seq(64, 74, .1)
hist(mean_heights_100, breaks = bins)$breaks
hist(mean_heights_1000, breaks = bins)$breaks
hundred_mean <- hist(mean_heights_100, breaks = bins)$counts
thousand_mean <- hist(mean_heights_1000, breaks = bins)$counts

barplot(rbind(hundred_mean, thousand_mean))
#NEED TO COLOR AND STUFF
min(mean_heights_100)
max(mean_heights_100)
