DT <- data.frame(id = 1:10,
                 ht=c(155, 152, 164, 175, 193, 203, 190, 183, 155, 169),
                 wt=c(80, 85, 45, 69, 86, 110, 106, 96, 90, 89),
                 gender=c("m", "m", "f", "m", "f", "f", "f", "m", "f", "m"))

DT$bmi <- round(DT$w/(DT$ht/100)**2,2)

DT$bmi.grp <- ifelse (DT$bmi <= 18.5, "underweight", 
                      ifelse(DT$bmi > 18.5 & DT$bmi <= 25 , "normal", 
                             ifelse(DT$bmi >25 & DT$bmi <= 30, 'overweight', 
                                    ifelse(DT$bmi >30, "obese", ""))))

DT

model <- lm(mpg ~ cyl, data=mtcars)
model

summary(model)
typeof(summary(model))

summary(model)$coefficients

beta_se <- function(model) {
  model.summary <- summary(model)
  coef <- model.summary$coefficients
  output <- model.summary$coefficients[2,c('Estimate', 'Std. Error', 'Pr(>|t|)')]
  return(output)
}

beta_se(model)


model_1 <- lm(disp ~ mpg, data=mtcars)

beta_se(model_1)

model_2 <- lm(drat~mpg, data=mtcars)

beta_se(model_2)