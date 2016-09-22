#Stats and plotting exercise 
head(ChickWeight)

#1
time_zero <- ChickWeight[ChickWeight$Time == 0,] 
plot(time_zero$Diet, time_zero$weight, xlab = "Diet", ylab = "Weight")
time_zero_model <- lm(formula = time_zero$weight ~ time_zero$Diet)
anova(time_zero_model)
#There is no statistical difference between the weight of chicks assigned to different day treatments on day 0

#2
time_end <- ChickWeight[ChickWeight$Time == 4,]
plot(time_end$Diet, time_end$weight, xlab = "Diet", ylab = "Weight (gm)")
time_end_model <- lm(formula = time_end$weight ~ time_end$Diet)
anova(time_end_model)
#There is a statistical difference between the weight of chicks assigned to different day treatments on day 21

#3
data <- ChickWeight
data <- within (data, {
  Chick <- factor(Chick)
  Diet <- factor(Diet)
  Time <- factor(Time)
})
summary(aov(weight ~ Diet * Time + Error(Chick), data = data))
#There is an effect of diet on chick growth, and there is also an affect of the interaction term between diet and time on chick growth


#4
plot(ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet,
     pch = 19, xlab = "Time (Days)", ylab = "Weight (gm)", main = "Chick Weights" )
legend(1,350, c("Diet 1","Diet 2", "Diet 3", "Diet 4"), 
       unique(ChickWeight$Diet), col=1:length(ChickWeight$Diet))


######
#5
plot(ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet, type = "n", pch = 19, xlab = "Time (Days)", ylab = "Weight (gm)", main = "Chick Weights" )

for (i in 1:length(unique(ChickWeight$Chick))) {
  userow <- ChickWeight$Chick == i
  lines(ChickWeight$Time[userow], ChickWeight$weight[userow], col = i)
}

