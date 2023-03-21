####################
rm(list=ls(all=TRUE)) # limpa memória 
dev.off() #limpa gáfico
####################
#Trilha 5 - Regressão Linear Multivariada
ds1 <- read.csv2("..\autos.csv")

#a) Ajustar um modelo de regressão linear 
# sendo price a variável alvo (resposta), 
#como função das demais variáveis citadas acima: 
#horsepower, length, engine.size, city.mpg.

modelo1 <- lm(price ~ horsepower + length + engine.size + city.mpg - 1, data = ds1)
summary(modelo1)

#b) Realizar a análise do modelo ajustado, 
#avaliando o valor do R-quadrado, 
#a significância estatística de cada parâmetro ajustado e 
#a qualidade total do ajuste pela estatística F.

#retirar horsepower pois parece não ter significância
modelo2 <- lm(price ~ length + engine.size + city.mpg - 1, data = ds1)
summary(modelo2)

#retirar length pois parece não ter significância
modelo3 <- lm(price ~ engine.size + city.mpg - 1, data = ds1)
summary(modelo3)


#c)    Realizar a verificação de 
# aderência do modelo às premissas estatísticas 
# do método dos mínimos quadrados 
# através dos gráficos diagnósticos, 
# comentando o gráfico dos resíduos x valores ajustados e
# o gráfico da curva Normal-QQ.

#configura saída para 4 plotagens de uma vez
par(mfrow = c(2,2))
plot(modelo3)



#d)    Fazer uma análise dos resultados do ajuste, 
# discorrendo sobre o impacto de cada preditora, 
# significativa do ponto de vista estatístico, no preço do carro.

# as variaveis explicativas engine.size e city.mpg são as que mais conseguem
# explicar a aleatoriedade do comportamento da variavel resposta price.
#
# as outras variavei explicativas não interferem tanto na aleatoriedade 
# da variavel resposta price
