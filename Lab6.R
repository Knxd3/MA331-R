library(dsEssex)
data(nhanes)

head(nhanes)

colnames(nhanes)

G1 <- filter(nhanes, AgeDecade == ' 20-29' & Gender == 'female') %>% summarise(average=mean(BPSysAve, na.rm=TRUE), 
                                                                               SD = sd(BPSysAve, na.rm=TRUE),
                                                                               Min = min(BPSysAve, na.rm = TRUE),
                                                                               Max = max(BPSysAve, na.rm = TRUE))

G1_avg <- pull(G1, average)

G1

fem <- filter(nhanes, Gender == 'female') %>% group_by(AgeDecade) %>% summarise(average=mean(BPSysAve, na.rm=TRUE),
                                                                                SD=sd(BPSysAve, na.rm=TRUE))

male <- filter(nhanes, Gender == 'male') %>% group_by(AgeDecade) %>% summarise(average=mean(BPSysAve, na.rm=TRUE),
                                                                                SD=sd(BPSysAve, na.rm=TRUE))

f_m <- group_by(nhanes, AgeDecade, Gender) %>% summarise(average=mean(BPSysAve, na.rm=TRUE),
                                                         SD=sd(BPSysAve, na.rm=TRUE))

f_m

nh1 <- nhanes %>% mutate(Group = case_when(BMI>30 ~ 'obese',
                                    (BMI<=30 & BMI >=25) ~ 'overweight',
                                    BMI<25 & BMI>= 18 ~ 'healthy',
                                    TRUE ~ 'underweight')) %>% group_by(Group) %>% summarise(
                                      average = mean(BPSysAve, na.rm=TRUE), SD=sd(BPSysAve, na.rm=TRUE)) %>% arrange(
                                        average
                                      )
nh1


