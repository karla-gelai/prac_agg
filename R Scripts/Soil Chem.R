getwd()
setwd("C:/Users/God is good!/Documents/github/prac_agg")
data <- read.table("Data/Soilchem_Ntrial_Incitec_290420.csv", header = TRUE, sep=',')
names(data)
anova(lm(data$pH..1.5.CaCl2.~data$N.Rate))

bargraph.CI(data$N.Rate,data$pH..1.5.CaCl2.,main="pH CaCl2")
class(data)
anova(lm(data$pH..1.5.Water.~data$N.Rate))

bargraph.CI(data$N.Rate,data$pH..1.5.Water.,main="pH Water")


for(i in colnames(data[,5:7])){
  print(i)
  print(anova(lm(data[,i]~data$N.Rate)))
}

bargraph.CI(data$N.Rate,data$Nitrate.Nitrogen.,main="Nitrate")
bargraph.CI(data$N.Rate,data$Cation.Exch..Cap.,main="C E C")
