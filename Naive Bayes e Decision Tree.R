# Tarefa 2 = Naive Bayes e Decision Tree Mushrooms
#
#
# O arquivo pode ser obtido em:
# https://www.openml.org/data/get_csv/24/dataset_24_mushroom.arff
# 

# Verifique outras libraries necess???rias na sua execu??????o
install.packages("party")
library(e1071)
library(party)
library(caret)
library(ROCR)

#credit = read.csv("https://www.openml.org/data/get_csv/29/dataset_29_credit-a.arff",header=T)
mushrooms = read.csv("https://www.openml.org/data/get_csv/24/dataset_24_mushroom.arff",header=T)


# MANTER O SEED PARA GARANTIR AS RESPOSTAS DO QUESTION???RIO 
RNGversion("3.5.2")
set.seed(1987)

# Elimina valores NA
mushrooms[mushrooms[]=="?"]=NA
mushrooms=na.omit(mushrooms)

#summary(mushrooms)
#head(mushrooms)
#sapply(mushrooms, class)


# Gera Conjuntos de Treinamento e Teste
L <- sample(1:nrow(mushrooms),round(nrow(mushrooms)/3))
train <- mushrooms[-L,]
test <- mushrooms[L,]

#
#
# Naive Bayes 
#
fitBayes = naiveBayes(class~.,data=train,laplace=1)

#names(fitBayes)
#fitBayes$apriori
#fitBayes$tables

# predict Output 

predBayes = predict(fitBayes, test)

length(test$class)
length(predBayes ) #tem o dobro do tamanho da outra


table(predBayes,test$class)
table(test$class,predBayes)
table(predBayes)

# matriz de confus???o
c_matrix = table(predBayes,test$class)
print(c_matrix)

cat('Accuracy Bayes: ', sum(diag(c_matrix))/sum(c_matrix)*100, ' %', "\n")

#
#
# Descision Tree 
#
fitTree = ctree(class~.,data=train) #todos atributos

# predict Output 
predTree = predict(fitTree, test)
predTree

# matriz de confus???o
c_matrix = table(predTree,test$class)
print(c_matrix)

cat('Accuracy Dtree: ', sum(diag(c_matrix))/sum(c_matrix)*100, ' %', "\n")

plot(fitTree)






