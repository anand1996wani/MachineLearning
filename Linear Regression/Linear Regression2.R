typeof(data)
cor(data)
summary(data)
str(data)
model <- lm(data$V6 ~ data$V1 + data$V2 + data$V3 + data$V4 + data$V5)
summary(model)
test <- data.frame(data$V1,data$V2,data$V3,data$V4,data$V5)
prediction <- predict(model,test)
error <- sum(prediction - data$V6)^2
error

pca <- princomp(data[,1:5],cor = TRUE,score = TRUE)
summary(pca)
plot(pca)
pca$loadings
pca$rotation
pca$sdev
pca$s

#print(data)
pca2 <- prcomp(data[,1:5],center = TRUE,scale = TRUE)
#pca2$x
newm <- lm(data$V6~pca2$x)
summary(newm)
newp <- predict(newm,test)
#pcaChart(pca$scores)
error1 <- sum(newp - data$V6)^2
error1

eigen(cor(data[,1:5]))$values
diag(var(pca2$x[,]))
cor(pca2$x)

pca$
