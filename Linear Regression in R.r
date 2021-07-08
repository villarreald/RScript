library(ggplot2)
read.csv("regrex1.csv")

#add argument instead of regrex1.csv
regrex1 <- read.csv("regrex1.csv")

png("scatter.png")
ggplot(regrex1, aes(x,y)) + geom_point()

#ggplot(regrex1, aes(x,y)) + geom_smooth(method ="lm", se = F)

png("fit.png")
ggplot(regrex1, aes(x,y)) + geom_point() + geom_smooth(method ="lm", se = F)

dev.off()

