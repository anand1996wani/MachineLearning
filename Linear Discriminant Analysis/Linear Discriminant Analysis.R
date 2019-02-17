library(package = "MASS")
library(package = "ggplot2")

data("iris")
my.data <- iris
head(my.data)
my.plot.data <- data.frame(X = my.data$Sepal.Length,Y = my.data$Sepal.Width,Species = my.data$Species)
head(my.plot.data)
my.plot <- ggplot(data = my.plot.data,aes(x = X,y = Y),lab) + geom_point(aes(color = Species)) + theme_bw()
#my.plot
#ggsave(file = "IRIS DATA.pdf")
model <- lda(formula = Species ~ .,data = my.data)
data.lda.values <- predict(model)
head(data.lda.values)
plot.lda.data = data.frame(X = data.lda.values$x[,1],Y=data.lda.values$x[,2],Species = my.data$Species)

plot.lda <- ggplot(data = plot.lda.data,aes(x = X,y = Y),lab) + geom_point(aes(color = Species)) + theme_bw()
predict(model,newdata = data.frame(Sepal.Length = 5.2,Sepal.Width = 3.4, Petal.Length = 1.3, Petal.Width = 0.3))

#plot.lda
#ggsave(file = "IRIS DATA LDA.pdf")

