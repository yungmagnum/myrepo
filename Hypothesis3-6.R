library(readxl)
prepared_data3_delayed <- read_excel("Data/prepared_data3_delayed.xlsx")

df = data.frame(prepared_data3_delayed)

#Hypothesis 3
#tests for normal distribution Route 1
hist(df$Arrival.delay.in.minutes.Route.1.F)
hist(df$Arrival.delay.in.minutes.Route.1.L)

#compute means
describe(df$Arrival.delay.in.minutes.Route.1.F)
describe(df$Arrival.delay.in.minutes.Route.1.L)

#mann whitney test
wilcox.test(df$Arrival.delay.in.minutes.Route.1.F, df$Arrival.delay.in.minutes.Route.1.L, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.1.F, df$Arrival.delay.in.minutes.Route.1.L, names=c("FlyUIBK", "LDA"))

#Hypothesis 4
#tests for normal distribution Route 2
hist(df$Arrival.delay.in.minutes.Route.2.F)
hist(df$Arrival.delay.in.minutes.Route.2.L)

#compute means
describe(df$Arrival.delay.in.minutes.Route.2.F)
describe(df$Arrival.delay.in.minutes.Route.2.L)

#mann whitney test
wilcox.test(df$Arrival.delay.in.minutes.Route.2.F, df$Arrival.delay.in.minutes.Route.2.L, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.2.F, df$Arrival.delay.in.minutes.Route.2.L, names=c("FlyUBIK", "LDA"))

#Hypothesis 5
#tests for normal distribution Route 3
hist(df$Arrival.delay.in.minutes.Route.3.F)
hist(df$Arrival.delay.in.minutes.Route.3.L)

#compute means
describe(df$Arrival.delay.in.minutes.Route.3.F)
describe(df$Arrival.delay.in.minutes.Route.3.L)

#mann whitney test
wilcox.test(df$Arrival.delay.in.minutes.Route.3.F, df$Arrival.delay.in.minutes.Route.3.L, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.3.F, df$Arrival.delay.in.minutes.Route.3.L, names=c("FlyUIBK", "LDA"))

#Hypothesis 6
#tests for normal distribution Route 4
hist(df$Arrival.delay.in.minutes.Route.4.F)
hist(df$Arrival.delay.in.minutes.Route.4.L)

#compute means
describe(df$Arrival.delay.in.minutes.Route.4.F)
describe(df$Arrival.delay.in.minutes.Route.4.L)

#mann whitney test
wilcox.test(df$Arrival.delay.in.minutes.Route.4.F, df$Arrival.delay.in.minutes.Route.4.L, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df$Arrival.delay.in.minutes.Route.4.F, df$Arrival.delay.in.minutes.Route.4.L, names=c("FlyUIBK", "LDA"))
