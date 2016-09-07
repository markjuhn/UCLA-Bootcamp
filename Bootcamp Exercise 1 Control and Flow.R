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

