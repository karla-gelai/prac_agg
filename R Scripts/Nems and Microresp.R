getwd()
setwd("C:/Users/God is good!/Documents/github/prac_agg")
data <- read.table("Data/N_trial_data.csv", header = TRUE, sep=',')
data <- read.table("Data/microresp.csv", header = TRUE, sep=',')
names(data)
view(data)
View(data)
anova(lm(data$Lab.C~data$Rate))

library(sciplot)
bargraph.CI(data$Rate,data$Lab.C,main="Labile C")
class(data)
data[5:10,5:10]
row.names(data)
row.names(data)
colnames(data)
nem.indices <- data[,c("Div.H", "MI","PPI","EI","SI","CI","BF","Det","Pred.1","Roots")]
install.packages("tidyverse")
data[1:6,1:6]
data[5:10,5:10]
row.names(data)
colnames(data)
for(i in colnames(data[,5:10])){
  print(i)
  print(anova(lm(data[,i]~data$Rate)))
  }

data[23:32,23:32]
row.names(data)
colnames(data)
for(i in colnames(data[,23:32])){
  print(i)
  print(anova(lm(data[,i]~data$Rate)))
}

# Create bar graph of the different indices
bargraph.CI(data$Rate,data$MI,main="Maturity Index")

# try ggplot
library(tidyverse)

# Analysis of the Microresp data
anova(lm(data$Full.name~data$CO2))
data <- read.table("Data/microresp_Grp.csv", header = TRUE, sep=',')
names(data)

# anova of all amino acids
for(i in colnames(data[,5:8])){
  print(i)
  print(anova(lm(data[,i]~data$N.Rate)))
}

# anova of all Carbon Sources
for(i in colnames(data[,4:18])){
  print(i)
  print(anova(lm(data[,i]~data$N.Rate)))
}
# graph the most significant "Arabinose"
bargraph.CI(data$N.Rate,data$Arab,main="Arabinose")
bargraph.CI(data$N.Rate,data$Oxalic,main="Oxalic")
bargraph.CI(data$N.Rate,data$Malic,main="Malic")
