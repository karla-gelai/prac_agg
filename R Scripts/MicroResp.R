getwd()
setwd("C:/Users/God is good!/Documents/github/prac_agg")
data <- read.table("Data/microresp_b1.csv", header = TRUE, sep=',')
MicroResp <- read.csv("Data/microresp_b1.csv")

# check what the data are there  
str(MicroResp)

# check library (the package has been installed before)
library(sciplot)

# anova of all 
for(i in colnames(data[,4:18])){
  print(i)
  print(anova(lm(data[,i]~data$N.Rate)))
}


# intall psych #descriptive stats #Ref fro Youtube ANOVA Graph ggplot
install.packages ("psych")
library(psych)

Carbs <- subset(MicroResp, Train == '')





MRboxplot <- ggplot(data=MicroResp, aes(x = N.Rate, y = CO2, fill = Substrate ))
           MRboxplot + geom_boxplot(notch = TRUE, position = position_dodge(1))
           + stat_summary(fun.y=mean, geom="point", shape=23,size=2, position = position_dodge(1))
           + labs(x = "Nitrogen Rate (kg/ha/yr)", y = "CO2" )
           

