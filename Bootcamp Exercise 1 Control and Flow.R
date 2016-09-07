#Bootcamp Exercise 1: Control and Flow

#Exercise 1
for (i in 1:9) {
  if (i < 9) {
    cat("\n")
  }
  if (i == 9) {
    cat("*")
  }
}


#Line break
cat("\n")

#Exercise 2
for (i in 1:10) {
  if (i < 10) {
    cat("*&")
  }
  if (i == 10) {
    cat("*")
  }
}

#Exercise 3, Done by hand

#Exercise 4
###you can use the if statement with the modulus operator to conditionally perform operations
years <- c( 2015, 2016, 2018, 2020, 2021)
for(i in 1:length(years)){
  if(years[i] %% 2 == 0){
    cat(years[i], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[i] %% 4 == 0){
    cat('\t', 'And presidential election!', sep = '\t', fill = T)
  }
}
##NOT SURE ABOUT THIS YET

## Exercise 5
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);

#Now look at the error message the following lines of code produce. Can you think of a way to modify this loop so that the loop will compund the interest?
compounded <- rep(1, length(bankAccounts))
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

#HINT: variables must be initialized before you can perform operations on them
#HINT 2: look at the rep() function and see if you can use that to initialize a variable that will help you.


