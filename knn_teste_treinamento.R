library(class)
library(MASS)

help(biopsy)
biopsy
head(biopsy)
tail(biopsy)

dataset1 <- na.omit(biopsy)
col_dados <-  2:10 #IMPORTANTE : desconsiderar a coluna ID e a coluna CLASS
col_classe <- 11

col_dados
col_classe

L <- sample(1:nrow(dataset1),round(nrow(dataset1)/3)) #gera lista aleatória com 1/3
teste       <- dataset1[L,col_dados]  # L 1/3 da base
treinamento <- dataset1[-L,col_dados] #complemento de L, 2/3 da base

head(teste)       #ver se preencheu certo 
tail(treinamento) #ver se preencheu certo 

dataset1[-L,col_classe]         #rótulo no complementar 2/3
factor(dataset1[-L,col_classe]) # variavel categórica

acuracia = c(1:100)*0
cl <- factor(dataset1[-L,col_classe])

for (i in 1:100)
{
  fit <- knn(treinamento, teste, cl, k=12 )

# matriz de confusão
# fit[1:length(L)]
#                        table(fit[1:length(L)],factor(dataset1[L,col_classe]))
  matriz_de_confusao <- table(fit[1:length(L)],factor(dataset1[L,col_classe]))
  acuracia[i] = sum(diag(matriz_de_confusao)) / sum(matriz_de_confusao)*100
}  


print(acuracia) #tá estranho, todos iguais

#Accuracy, precisão, exatidão
print(matriz_de_confusao)
cat('Acuracia : ', sum(diag(matriz_de_confusao)) / sum(matriz_de_confusao)*100,'%')
