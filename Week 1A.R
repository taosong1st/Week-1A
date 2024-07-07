ads <- read.csv('D:/Data Science/Week 1.csv')
View(ads)
colnames(ads)
experience <- ads$Years.experienced
salary <- ads$Salary
plot(experience,salary)
plot(experience,salary,pch=16,cex=1,col='blue',main='experience vs salary',xlab='experience',ylab='salary')
install.packages('caTools')
library(caTools)
model1 <- lm(salary ~ experience)
summary(model1)
coefficients(model1)
abline(model1)