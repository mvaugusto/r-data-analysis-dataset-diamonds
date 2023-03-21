library(class)
set.seed(1984)

str(iris)

nrow(iris)       # retorna quantas linhas tem no dataset
nrow(iris)/3     # retorna quanto é 1/3 das linhas do dataset
round(nrow(iris)/3) #arredonda inteiro
sample(1:nrow(iris),round(nrow(iris)/3)) #gera lista aleatória com 1/3

L <- sample(1:nrow(iris),round(nrow(iris)/3))
L   # Valores em L
-L  # Complemento dos valores em L
teste       <- iris[L,1:4]  # L 1/3 da base
treinamento <- iris[-L,1:4] #complemento de L, 2/3 da base
teste
treinamento



iris[-L,5] #complementar 
factor(iris[-L,5]) # variavel categórica
cl <- factor(iris[-L,5])
fit <- knn(treinamento, teste, cl, k=3 )

#matriz de confusão
fit[1:length(L)]
table(fit[1:length(L)],factor(iris[L,5]))
matriz_de_confusao <- table(fit[1:length(L)],factor(iris[L,5]))
print(matriz_de_confusao)

#Accuracy, precisão, exatidão
cat('Acuracia : ', sum(diag(matriz_de_confusao)) / sum(matriz_de_confusao)*100,'%')

fit
#CODE [ knn_iris2.r ]

############################################
# pag 34 (knn e regressão)
install.packages("FNN")
library(FNN)    # Fast Nearest Neighbor Search
install.packages("caret")
library(caret)  # short for Classification And REgression Training
############################################

load("nonlin.Rdata")
par(mfrow=c(1,5))
x<- xtrain[,1]
y<- ytrain[,1]
plot(x,y)
lines(x0,r0,lwd=2)

# regressão linear
linmodel <- lm(y~x)
plot(x,y)
abline(a=linemodel$coef[1], b=linemodel$coef[2], col="red",lwd=2)

# regressão knn
library(FNN)
ks <- c(3,15,45)
knnmodel1 <- knn.reg(train=matrix(x,col=1),test=matrix(x0,ncol=1),y=y,k=ks[1])
knnmodel2 <- knn.reg(train=matrix(x,col=1),test=matrix(x0,ncol=1),y=y,k=ks[2])
knnmodel3 <- knn.reg(train=matrix(x,col=1),test=matrix(x0,ncol=1),y=y,k=ks[3])


# par(mfrow=c(1,3))
plot(x,y, main=paste("k = ",ks[1]))
lines(x0,knnmodel1$pred,col="red",lwd=2)

plot(x,y, main=paste("k = ",ks[1]))
lines(x0,knnmodel2$pred,col="green4",lwd=2)

plot(x,y, main=paste("k = ",ks[1]))
lines(x0,knnmodel3$pred,col="blue",lwd=2)

# CODE [ KNN_Linear_R.r ]

