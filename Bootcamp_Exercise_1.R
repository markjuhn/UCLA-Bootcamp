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
compounded <- rep(1, length(bankAccounts))
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i] 
  }
print(compounded)
## Exercise 6

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this
expenses <- house + food + fun
for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] <- bankAccounts[i] + income[i] - expenses[i]
    bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i] 
  }
}

##Exercise 7

###BEGIN AT ZERO =*(

bankAccounts <- c(0, 0, 0)
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 
income <- c(21, 21, 21);
interestRate <- 0.0525;
expenses <- house + food + fun

for (j in 2015:2020) {
  for (i in 1:length(bankAccounts)) {
    if (j %% 2 == 1){
      if (i %% 2 == 1) {
        bankAccounts[i] <- bankAccounts[i] + 5
      }
    }
    bankAccounts[i] <- bankAccounts[i] + income[i] - expenses[i]
    bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i] 
  }
}
print(bankAccounts)


#Exercise 8
x <- 1
a = 0
while (x < 17) {
  x <- x + 1 #counter?
  a <- a + x
  if (x == 17) {
    print(a)
  }
}

#Exercise 9
myfunction <- function(number) {
  if (number <= -1) {
    print ("small")
  } else if (number >= 1) {
    print ("big")
  } else {
    print ("medium")
  }
}

