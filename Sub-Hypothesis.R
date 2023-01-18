library(readxl)
library(psych)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23.xlsx")
df = data.frame(StudentData_FlyUIBK_22_23)

df0 <- subset(df, Delay.indicator == "1")
View(df0)

#number of delayed flights from Berlin (n=31)
df1.1 <- subset(df, Origin.airport == "BER" & Delay.indicator == '1')
describe(df1.1$Arrival.delay.in.minutes)

#test for normal distribution 
hist(df1.2$Arrival.delay.in.minutes)
hist(df1.3$Arrival.delay.in.minutes)

#FlyUIBK's delayed flights from Berlin (n=23)
df1.2 <- subset(df, Origin.airport == "BER" & Delay.indicator =="1" & Airline =="FlyUIBK")
describe(df1.2$Arrival.delay.in.minutes)

#LDA's delayed flights from Berlin (n=8)
df1.3 <- subset(df, Origin.airport == "BER" & Delay.indicator =="1" & Airline =="LDA")
describe(df1.3$Arrival.delay.in.minutes)

#mann-whitney-u test for unpaired samples
wilcox.test(df1.2$Arrival.delay.in.minutes, df1.3$Arrival.delay.in.minutes, exact = FALSE, conf.int = TRUE)


#number of delayed flights from Oslo (n=16)
df3.1 <- subset(df, Origin.airport == "OSL" & Delay.indicator == '1')
describe(df3.1$Arrival.delay.in.minutes)

#test for normal distribution 
hist(df3.2$Arrival.delay.in.minutes)
hist(df3.3$Arrival.delay.in.minutes)

#FlyUIBK's delayed flights from Oslo (n=8)
df3.2 <- subset(df, Origin.airport =="OSL" & Delay.indicator =="1" & Airline =="FlyUIBK")
describe(df3.2$Arrival.delay.in.minutes)

#LDA's delayed flights from Oslo (n=8)
df3.3 <- subset(df, Origin.airport =="OSL" & Delay.indicator =="1" & Airline =="LDA")
describe(df3.2$Arrival.delay.in.minutes)

#mann-whitney-u test for unpaired samples
wilcox.test(df3.2$Arrival.delay.in.minutes, df3.3$Arrival.delay.in.minutes, exact = FALSE, conf.int = TRUE)


