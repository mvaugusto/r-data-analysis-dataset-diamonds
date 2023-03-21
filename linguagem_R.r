install.packages("ggplot2")
library(ggplot2)
#data(diamonds)
diamantes <- diamonds

#.	Qual � a estrutura do conjunto de dados "diamantes"?
str(diamantes)

#.	Explore a parte inicial e a final do conjunto de dados.
head(diamantes)
tail(diamantes)

#.	Fa�a alguns sum�rios estat�sticos para entender melhor a base de dados.
summary(diamantes)

#.	A sa�da da fun��o summary() est� de acordo com a descri��o mostrada anteriormente?
#color parece estar na ordem diferente
levels(diamantes$color)
summary(diamantes$color)


#.	Explore a vari�vel price, seguindo o modelo de explora��o
summary(diamantes[,"price"])

#.	Veja a distribui��o da vari�vel (histograma); observe a faixa de valores da vari�vel e tamb�m.
hist(diamantes$price) #n�o segue uma curva "normal"
boxplot(diamantes$price) #vish, tem bastante outlier

#.	Explore tamb�m as vari�veis carat, cut, color, clarity, x, y, z, depth e table, seguindo o modelo de explora��o.
hist(diamantes$carat)
hist(diamantes$depth) # meio normal
hist(diamantes$table) # meio normal
hist(diamantes$price) 
hist(diamantes$x)
hist(diamantes$y)
hist(diamantes$z)

#.	Crie boxplots para as vari�veis num�ricas; veja se existem dados anormais (outliers).
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

#.	Utilize as vari�veis categ�ricas para fazer o facetamento dos dados, mostrando alguns gr�ficos com 2 ou mais vari�veis cont�nuas lado a lado.
summary(diamantes$cut)
summary(diamantes$color)
summary(diamantes$clarity)

#Para cada resultado/gr�fico obtido, explique e discuta-os, de modo a construir um relat�rio de explora��o dos dados, que dever� ser submetido.


