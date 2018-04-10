attach(Leinhardt) #entra no dataset
region #coluna escolhida do dataset
head(region)
sort(region) #coloca em ordem as informações
#trocando as celulas que estão vazias por valores
Leinhardt[24,3]<-150
Leinhardt[83,3]<-100
Leinhardt[86,3]<-96
Leinhardt[91,3]<-100
sort(Leinhardt$infant)#ordenar coluna
table(Leinhardt$infant)#transforma coluna em tabela
sort(table(Leinhardt$infant))#ordena a tabela do maior para o menor
plot(income:infant)
length(region)
barplot(length(region):infant)
install.packages("plyr")
library(plyr)
auxiliar<-count(Leinhardt,vars="region")
View(auxiliar)
write.csv(auxiliar,"regiao.csv")
