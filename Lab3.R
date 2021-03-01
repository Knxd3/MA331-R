getwd()
setwd('C:/Users/Ioan/Desktop/Essex/MA331/')

lbw <- read.csv('lbw.csv')

names(lbw)

rm(list = ls())

require(dsEssex)

data(lbw)

head(lbw)

?lbw

lbw.reduced <- lbw[1:180, c('id', 'age', 'smoke', 'bwt')]

lbw.reduced$yage <- ifelse(lbw.reduced$age < 19, 1,0)

head(lbw.reduced)

sum(lbw.reduced$smoke & lbw.reduced$yage)
sum(lbw.reduced$smoke | lbw.reduced$yage)
length(lbw.reduced$id) - sum(lbw.reduced$smoke)

attach(lbw.reduced)
mean(bwt)
sd(bwt)
IQR(bwt)
max(age)
min(age)
summary(bwt)
#...
detach(lbw.reduced)

by(data = lbw.reduced$bwt, INDICES = smoke, FUN = summary)

#alternatively
summary(lbw.reduced[lbw.reduced$smoke == 0, 'bwt'])
summary(lbw.reduced[lbw.reduced$smoke == 1, 'bwt'])

#----

cor(lbw.reduced$age, lbw.reduced$bwt)

#exercise 2
set.seed(300)
rand1 <- rnorm(100,11,5.5)
set.seed(300)
rand2 <- rnorm(100,11,5.5)

identical(rand1,rand2)

index <- which(rand1 <= quantile(x = rand1, probs = 0.25) & rand1 > 0)
rand1[index]
