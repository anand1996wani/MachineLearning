data
model <- lm(data$V6 ~ data$V1 + data$V2 + data$V3 + data$V4 + data$V5)
summary(model)
test <- data.frame(data$V1,data$V2,data$V3,data$V4,data$V5)
prediction <- predict(model,test)
error <- sum(prediction - data$V6)^2
error

#pca <- princomp(data,cor = TRUE,score = TRUE)
#pca$scores
#Dont take output
pca <- prcomp(data[,1:5],center = TRUE,scale = TRUE)
summary(pca)
print(pca$rotation)#formula of conversion of original components to principle componects
eigen(cor(data[,1:5]))$values #eigen values of corelation matrix of original data
diag(var(pca$x[,]))#diagonal elemnts of variance of principle components
cor(pca$x)#corelation matrix of principle components diagonal is 1
#principle components are diagonal to each other

#principle components regression
pc <- data.frame(pca$x)
pc
cor(newpc)[,1]

model1 <- lm(data[,6]~pc)
summary(model1)

#after removing less important components
model2 <- lm(data[,6]~PC2 + PC4 + PC1 +  PC5,data = pc)
summary(model2)
anova(model1,model2)