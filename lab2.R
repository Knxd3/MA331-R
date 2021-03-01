ht <- c(155,152,164,175,193,203,190,183,155,169)
wt <- c(80,85,72,69,86,110,106,96,90,89)
gender <- c('m','m','f','m','f','f','f','m','f','m')

BMI <- wt/(ht/100)**2

BMI

length(ht)

k = 0
for (x in wt) {
  if (x > 80) 
    k = k +1
    }

k

freq_table <- table(gender)
freq_table

rounded_BMI <- round(BMI,2)
rounded_BMI

BMI3_5 <- rounded_BMI[c(3,5)]

BMI3_5

#---------------------------------

A <- c(0.70, 3.26, 4.48, 5.05)

B <- append(A,round(seq(from= 2, to = 9, by = 7/5),2))

B

b1 <- B/4

b2 <- B*2.5

b3 <- B**2.5

b1;b2;b3

y <- append(append(b1,b2), b3)

length(y)

S <- c(0.175, 0.815, 1.12, 1.262, 0.5, 0.85, 1.2, 1.55, 1.9, 2.25)

max(S)
min(S)
mean(S)

