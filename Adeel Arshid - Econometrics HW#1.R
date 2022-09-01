#Econometrics B2000
#Adeel Arshid
09/01/22

#Group Members: Cassiddy Drummond, Kseniia Huseinova, Adeel Arshid


library(tidyverse)
library(plyr)


x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)

fm <- lm(y ~ x)
summary(fm)

lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))


load("/Users/adeelarshid/Desktop/Household_Pulse_data.RData")

setwd("/Users/adeelarshid/Desktop/Household_Pulse_data.RData")

Household_Pulse_data[1:10,1:7]


attach(Household_Pulse_data)

summary(Household_Pulse_data)

fm <- lm(y ~ x)
summary(fm)
summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])

summary(Household_Pulse_data)

summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])


mean(TBIRTH_YEAR[GENID_DESCRIBE == "male"])


summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])




# Majority of people prefer eating in restaurant than eating at home. 




