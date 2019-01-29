data <- read.table(file = "data.txt", sep = "" , header = F , nrows = 1503,na.strings ="", stringsAsFactors= F)
#print(data)
#typeof(data)
#print(length(data))
x_train <- data[1:1200,1:5]
#x_train
y_train <- data[1:1200,'V6']
#y_train
x_test <- c(data[1200:1500,1:5])
y_test <- c(data[1200:1500,'V6'])
#print(head(y_test))
#print(head(x_test))
model <- lm(y_train ~ x_train$V1 + x_train$V2 + x_train$V3 + x_train$V4 + x_train$V5)
summary(model)
#print(x_test)
#temp <- data.frame(x_test$V1,x_test$V2,x_test$V3,x_test$V4,x_test$V5)
length(x_test$V1)
#print(dim(temp))
da <- data.frame('V1' = x_test$V1,'V2' = x_test$V2,'V3' = x_test$V3,'V4' = x_test$V4,'V5' = x_test$V5)
predictions <- predict(model,da)
length(predictions)
error <- (mean((y_test - predictions)^2))^(1/2)
error
