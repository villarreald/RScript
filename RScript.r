library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)

read.csv(args[1])

#add argument instead of regrex1.csv
regrex1 <- read.csv(args[1])

png("scatter.png")
ggplot(regrex1, aes(x,y)) + geom_point()
dev.off()

#ggplot(regrex1, aes(x,y)) + geom_smooth(method ="lm", se = F)

png("fit.png")
ggplot(regrex1, aes(x,y)) + geom_point() + geom_smooth(method ="lm", se = F)
dev.off()

