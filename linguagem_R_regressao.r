####################
rm(list=ls(all=TRUE)) # limpa mem�ria 
dev.off() #limpa g�fico
####################
#Trilha 5 - Regress�o Linear Multivariada
ds1 <- read.csv2("..\autos.csv")

#a) Ajustar um modelo de regress�o linear 
# sendo price a vari�vel alvo (resposta), 
#como fun��o das demais vari�veis citadas acima: 
#horsepower, length, engine.size, city.mpg.

modelo1 <- lm(price ~ horsepower + length + engine.size + city.mpg - 1, data = ds1)
summary(modelo1)

#b) Realizar a an�lise do modelo ajustado, 
#avaliando o valor do R-quadrado, 
#a signific�ncia estat�stica de cada par�metro ajustado e 
#a qualidade total do ajuste pela estat�stica F.

#retirar horsepower pois parece n�o ter signific�ncia
modelo2 <- lm(price ~ length + engine.size + city.mpg - 1, data = ds1)
summary(modelo2)

#retirar length pois parece n�o ter signific�ncia
modelo3 <- lm(price ~ engine.size + city.mpg - 1, data = ds1)
summary(modelo3)


#c)    Realizar a verifica��o de 
# ader�ncia do modelo �s premissas estat�sticas 
# do m�todo dos m�nimos quadrados 
# atrav�s dos gr�ficos diagn�sticos, 
# comentando o gr�fico dos res�duos x valores ajustados e
# o gr�fico da curva Normal-QQ.

#configura sa�da para 4 plotagens de uma vez
par(mfrow = c(2,2))
plot(modelo3)



#d)    Fazer uma an�lise dos resultados do ajuste, 
# discorrendo sobre o impacto de cada preditora, 
# significativa do ponto de vista estat�stico, no pre�o do carro.

# as variaveis explicativas engine.size e city.mpg s�o as que mais conseguem
# explicar a aleatoriedade do comportamento da variavel resposta price.
#
# as outras variavei explicativas n�o interferem tanto na aleatoriedade 
# da variavel resposta price
