#Stats and plotting exercise 
head(ChickWeight)

#1
time_zero <- ChickWeight[ChickWeight$Time == 0,] 
plot(time_zero$Diet, time_zero$weight, xlab = "Diet", ylab = "Weight")
time_zero_model <- lm(formula = time_zero$weight ~ time_zero$Diet)
anova(time_zero_model)

#2
time_end <- ChickWeight[ChickWeight$Time == 4,]
plot(time_end$Diet, time_end$weight, xlab = "Diet", ylab = "Weight (gm)")
time_end_model <- lm(formula = time_end$weight ~ time_end$Diet)
anova(time_end_model)

#3
#IS THERE A DIFFERENCE?

#4
plot(ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet,
     pch = 19, xlab = "Time (Days)", ylab = "Weight (gm)", main = "Chick Weights" )
legend(1,350, c("Diet 1","Diet 2", "Diet 3", "Diet 4"), 
       unique(ChickWeight$Diet), col=1:length(ChickWeight$Diet))
#5
plot(ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Chick)
