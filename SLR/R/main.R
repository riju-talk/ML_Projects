data =  read.csv("Salary_Data.csv")
library(caTools)
set.seed(123)

split = sample.split(data$Salary, SplitRatio = 2/3)
training_set = subset(data, split == TRUE)
test_set = subset(data, split == FALSE)

regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)

y_pred = predict(regressor, newdata = test_set)