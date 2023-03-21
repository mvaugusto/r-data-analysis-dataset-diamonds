install.packages("readr")
library(readr)
ds1 <- read_csv("..\\loja.csv")
colnames(ds1)
names(ds1)
spec(ds1)
dim(ds1)
attributes(ds1)
head(ds1)
tail(ds1)
summary(ds1)

######
unique(ds1$Cliente)
unique(ds1$`Tipo de Cliente`)
unique(ds1$Itens)
unique(ds1$`Vendas líquidas`)
unique(ds1$`Método de Pagamento`)
unique(ds1$Gênero)
unique(ds1$`Estado Civil`)
unique(ds1$Idade)
######

mean(ds1$Itens)
median(ds1$Itens)
sd(ds1$Itens)
var(ds1$Itens)

mean(ds1$`Vendas líquidas`)
median(ds1$`Vendas líquidas`)
sd(ds1$`Vendas líquidas`)
var(ds1$`Vendas líquidas`)


mean(ds1$Idade)
median(ds1$Idade)
sd(ds1$Idade)
var(ds1$Idade)

#####
install.packages("dplyr")
library(dplyr)
count(ds1, `Tipo de Cliente`)
count(ds1, `Método de Pagamento`)
count(ds1,`Estado Civil`)

