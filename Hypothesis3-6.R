library(readxl)
library(psych)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23 Adjusted.xlsx")
df = data.frame(StudentData_FlyUIBK_22_23)
View(df)

df1.1 <- subset(df, Route.Code == '1' & Airline == "FlyUIBK" & Adjusted.Delay.Indicator == '1')
df1.2 <- subset(df, Route.Code == "1" & Airline == "LDA" & Adjusted.Delay.Indicator == '1')

df2.1 <- subset(df, Route.Code == '2' & Airline == "FlyUIBK" & Adjusted.Delay.Indicator == '1')
df2.2 <- subset(df, Route.Code == '2' & Airline == "LDA" & Adjusted.Delay.Indicator == '1')

df3.1 <- subset(df, Route.Code == '3' & Airline == "FlyUIBK" & Adjusted.Delay.Indicator == '1')
df3.2 <- subset(df, Route.Code == "3" & Airline == "LDA" & Adjusted.Delay.Indicator == '1')

df4.1 <- subset(df, Route.Code == '4' & Airline == "FlyUIBK" & Adjusted.Delay.Indicator == '1')
df4.2 <- subset(df, Route.Code == "4" & Airline == "LDA" & Adjusted.Delay.Indicator == '1')

#Hypothesis 3
#tests for normal distribution Route 1
hist(d1.1$Adjusted.Arrival.delay.in.minutes)
hist(df1.2$Adjusted.Arrival.delay.in.minutes)

#compute means
describe(df1.1$Adjusted.Arrival.delay.in.minutes)
describe(df1.2$Adjusted.Arrival.delay.in.minutes)

#mann whitney test
wilcox.test(df1.1$Adjusted.Arrival.delay.in.minutes, df1.2$Adjusted.Arrival.delay.in.minutes, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.1.F, df$Arrival.delay.in.minutes.Route.1.L, names=c("FlyUIBK", "LDA"))

#Hypothesis 4
#tests for normal distribution Route 2
hist(df$Arrival.delay.in.minutes.Route.2.F)
hist(df$Arrival.delay.in.minutes.Route.2.L)

#compute means
describe(df2.1$Adjusted.Arrival.delay.in.minutes)
describe(df2.2$Adjusted.Arrival.delay.in.minutes)

#mann whitney test
wilcox.test(df2.1$Adjusted.Arrival.delay.in.minutes, df2.2$Adjusted.Arrival.delay.in.minutes, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.2.F, df$Arrival.delay.in.minutes.Route.2.L, names=c("FlyUBIK", "LDA"))

#Hypothesis 5
#tests for normal distribution Route 3
hist(df$Arrival.delay.in.minutes.Route.3.F)
hist(df$Arrival.delay.in.minutes.Route.3.L)

#compute means
describe(df3.1$Adjusted.Arrival.delay.in.minutes)
describe(df3.2$Adjusted.Arrival.delay.in.minutes)

#mann whitney test
wilcox.test(df3.1$Adjusted.Arrival.delay.in.minutes, df3.2$Adjusted.Arrival.delay.in.minutes, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.3.F, df$Arrival.delay.in.minutes.Route.3.L, names=c("FlyUIBK", "LDA"))

#Hypothesis 6
#tests for normal distribution Route 4
hist(df$Arrival.delay.in.minutes.Route.4.F)
hist(df$Arrival.delay.in.minutes.Route.4.L)

#compute means
describe(df4.1$Adjusted.Arrival.delay.in.minutes)
describe(df4.2$Adjusted.Arrival.delay.in.minutes)

#mann whitney test
wilcox.test(df4.1$Adjusted.Arrival.delay.in.minutes, df4.2$Adjusted.Arrival.delay.in.minutes, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.4.F, df$Arrival.delay.in.minutes.Route.4.L, names=c("FlyUIBK", "LDA"))
