library(readxl)
library(psych)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23 Adjusted.xlsx")

df = data.frame(StudentData_FlyUIBK_22_23)
df1 <- subset(df, Adjusted.Delay.Indicator == 1 & Airline == "FlyUIBK")
df2 <- subset(df, Adjusted.Delay.Indicator == 1 & Airline == "LDA")
df3 <- subset(df, Adjusted.Delay.Indicator == 1)

#test for normal distribution
hist(df3$Adjusted.Arrival.delay.in.minutes)

#compute means
describe(df1$Adjusted.Arrival.delay.in.minutes)
describe(df2$Adjusted.Arrival.delay.in.minutes)

#mann whitney test
wilcox.test(Adjusted.Arrival.delay.in.minutes~Airline, data = df3, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df1$Adjusted.Arrival.delay.in.minutes, df2$Adjusted.Arrival.delay.in.minutes, names=c("FlyUIBK", "LDA"))



