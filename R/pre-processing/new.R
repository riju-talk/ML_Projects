data = read.csv('Data.csv')
print(data)

#fixing missing values
data$Age = ifelse(is.na(data$Age), ave(data$Age, FUN = function(x) mean(x, na.rm = TRUE)), data$Age)
data$Salary = ifelse(is.na(data$Salary), ave(data$Salary, FUN = function(x) mean(x, na.rm = TRUE)), data$Salary)

print(data)
#encoding categorical data
data$Country = factor(data$Country,
levels = c('France', 'Spain', 'Germany'),
labels = c(1, 2, 3)
)
data$Purchased = factor(data$Purchased,
levels = c('No', 'Yes'),
labels = c(1, 2)
)

print(data)
#splitting
library(caTools)
set.seed(123)
split = sample.split(data$Purchased, SplitRatio = 0.8)
training_set = subset(data, split == TRUE)
test_set = subset(data, split == FALSE)

print(training_set)
print(test_set)