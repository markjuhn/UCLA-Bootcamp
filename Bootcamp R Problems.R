#Boot Camp problem
#Mark Juhn

# This will calculate the mean of 10 random standard normal variables
mean( rnorm( 10 ) )

#B.1 Help
'?' (mean)
help(mean)

help.search("mean")
apropos("mean")

RSiteSearch("violin")
RSiteSearch("violin", restrict = c("functions"))

help(RSiteSearch)

#B.2 Assignment
a <- 2 + 3
b <- a + a
a + a; a + b

#B.3 Data Structures
#B.3.1 Vectors

Y <- c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)

1:4
4:1
-1:3
-(1:3)

seq(from =1, to = 3, by = 0.2)
seq(1, 3, b = 0.2)
seq(1, 3, length = 7)
rep(1,3)
rep(1:3, 2)
rep(1:3, each = 2)

#B.3.2 Getting information about vectors

sum(Y)
mean(Y)
max(Y)
length(Y)
summary(Y)

Names <- c("Sarah", "Yunluan")
Names
b <- c(TRUE, FALSE)
b
class(Y)
class(b)

Y > 10
Y > mean(Y)
Y == 11
Y != 11

a <- 1:3
b<- 4:6
a+b
a*b
a/b
a+1
a * 2
1/a
a * 1:2
a * c(1,2,1)
1:4 * 1:2
1:4 * c(1, 2, 1, 2)

#B.3.3 Extraction and missing values

Y[1]
Y[1:3]
Y > mean(Y)
Y[Y > mean(Y)]

a <- c(5, 3, 6, NA)
a
is.na(a)
!is.na(a)
na.exclude(a)

mean(a)
mean(a, na.rm = TRUE)
d <- na.exclude(a)
mean(d)

#B.3.4 Matrices

matrix(letters[1:4], ncol = 2)
M <- matrix(1:4, nrow = 2)
M
M2 <- matrix(1:4, nrow = 2, byrow = TRUE)
I <- diag(1, nrow = 2)
I
Minv <- solve(M)
M %*% Minv

M[1,2]
M[1, 1:2]
M[,2]
M[,]

#B4 Functions
help(mean)
mean(1:4)
mean(1:4, trim = 0)
class(1:10)
class(warpbreaks)
summary(1:10)
summary(warpbreaks)

summary(lm(breaks ~ wool, data = warpbreaks))

##B.4.1 writing your own functions
FakeMean <- function(x, cheat = 0.05) {
  SumOfX <- sum(x)
  n <- length(x)
  trueMean <- SumOfX/n
  (1 + cheat) * trueMean
}
FakeMean(c(10,20,30), cheat = .5)

