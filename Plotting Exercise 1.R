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
