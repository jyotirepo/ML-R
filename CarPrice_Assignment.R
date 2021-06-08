#Car price prediction model using R

df <- read.csv('C:/Users/jysethy/krishnaik/ML-R/CarPrice_Assignment.csv')

View(df)

summary(df)

#Spliting the data into Train and test

set.seed(2)
library(caTools)

split <- sample.split(df, SplitRatio = 0.7)
split

train <- subset(df, split='TRUE')
test <- subset(df, split='FALSE')

View(train)
View(test)

#Create the model

model <- lm(price ~., data = train)
summary(model)

#Prediction

pred <- predict(model, test)
pred


plot(pred, type = "l", lty=1.8, col="blue")

plot(test$price, type =  "l", lty = 1.2, col= "red")
lines(pred, type = "l", col= "blue" )


## Finding Accuracy

rmse <- sqrt(mean(pred-df$price)^2)
rmse
