install.packages("ggplot2")
library(ggplot2)
#data(diamonds)
diamantes <- diamonds

#.	Qual é a estrutura do conjunto de dados "diamantes"?
str(diamantes)

#.	Explore a parte inicial e a final do conjunto de dados.
head(diamantes)
tail(diamantes)

#.	Faça alguns sumários estatísticos para entender melhor a base de dados.
summary(diamantes)

#.	A saída da função summary() está de acordo com a descrição mostrada anteriormente?
#color parece estar na ordem diferente
levels(diamantes$color)
summary(diamantes$color)


#.	Explore a variável price, seguindo o modelo de exploração
summary(diamantes[,"price"])

#.	Veja a distribuição da variável (histograma); observe a faixa de valores da variável e também.
hist(diamantes$price) #não segue uma curva "normal"
boxplot(diamantes$price) #vish, tem bastante outlier

#.	Explore também as variáveis carat, cut, color, clarity, x, y, z, depth e table, seguindo o modelo de exploração.
hist(diamantes$carat)
hist(diamantes$depth) # meio normal
hist(diamantes$table) # meio normal
hist(diamantes$price) 
hist(diamantes$x)
hist(diamantes$y)
hist(diamantes$z)

#.	Crie boxplots para as variáveis numéricas; veja se existem dados anormais (outliers).
boxplot(diamantes$carat)
boxplot(diamantes$depth)
boxplot(diamantes$table)
boxplot(diamantes$price)
boxplot(diamantes$price ~ diamantes$cut) # tem bastante outlier
boxplot(diamantes$price ~ diamantes$color) # tem bastante outlier
boxplot(diamantes$price ~ diamantes$clarity) # tem bastante outlier
boxplot(diamantes$x)
boxplot(diamantes$y)
boxplot(diamantes$z)

#.	Utilize as variáveis categóricas para fazer o facetamento dos dados, mostrando alguns gráficos com 2 ou mais variáveis contínuas lado a lado.
summary(diamantes$cut)
summary(diamantes$color)
summary(diamantes$clarity)

#Para cada resultado/gráfico obtido, explique e discuta-os, de modo a construir um relatório de exploração dos dados, que deverá ser submetido.


