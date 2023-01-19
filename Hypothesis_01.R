library(readxl)
library(psych)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23 Adjusted.xlsx")
View(StudentData_FlyUIBK_22_23)
df = data.frame(StudentData_FlyUIBK_22_23)

df0 <- subset(df, Adjusted.Delay.Indicator == "1")

#adjusted delayed flights for FlyUIBK (n=19)
df1.1 <- subset(df, Adjusted.Delay.Indicator == "1" & Airline == "FlyUIBK")
describe(df1.1$Adjusted.Arrival.delay.in.minutes)

#delayed flights for FlyUIBK (n=63)
df1.2 <- subset(df, Delay.indicator == "1" & Airline == "FlyUIBK")
describe(df1.2$Arrival.delay.in.minutes)

#delayed flights for LDA (n=31)
df2 <- subset(df, Adjusted.Delay.Indicator == "1" & Airline == "LDA")
describe(df2$Adjusted.Arrival.delay.in.minutes)




#mean and adjusted mean for FlyUIBK on day 1
df3.1 <- subset(df, Adjusted.Delay.Indicator == '1' & Airline == "FlyUIBK" & Day.of.Week == "1")
describe(df3.1$Adjusted.Arrival.delay.in.minutes)

df3.2 <- subset(df, Delay.indicator == '1' & Airline == "FlyUIBK" & Day.of.Week == "1")
describe(df3.2$Adjusted.Arrival.delay.in.minutes)

# mean for LDA on day 1 
df3.3 <- subset(df, Delay.indicator == '1' & Airline == "LDA" & Day.of.Week == "1")
describe(df3.3$Arrival.delay.in.minutes)

#mean and adjusted mean for FlyUIBK on day 2
df4.1 <- subset(df, Adjusted.Delay.Indicator == '1' & Airline == "FlyUIBK" & Day.of.Week == "2")
describe(df4.1$Adjusted.Arrival.delay.in.minutes)

df4.2 <- subset(df, Delay.indicator == '1' & Airline == "FlyUIBK" & Day.of.Week == "2")
describe(df4.2$Arrival.delay.in.minutes)

#mean for LDA on day 2 
df4.3 <- subset(df, Delay.indicator == '1' & Airline == "LDA" & Day.of.Week == "2")
describe(df4.3$Arrival.delay.in.minutes)


#mean and adjusted mean for FlyUIBK on day 6
df6.1 <- subset(df, Adjusted.Delay.Indicator == '1' & Airline == "FlyUIBK" & Day.of.Week == "6")
describe(df6.1$Adjusted.Arrival.delay.in.minutes)

df6.2 <- subset(df, Delay.indicator == '1' & Airline == "FlyUIBK" & Day.of.Week == "6")
describe(df6.2$Arrival.delay.in.minutes)

#mean for LDA on day 6
df6.3 <- subset(df, Delay.indicator == '1' & Airline == "LDA" & Day.of.Week == "6")
describe(df6.3$Arrival.delay.in.minutes)


#relative percentage
prop.table(table,2)

#cross table
table <- xtabs (~ df$Adjusted.Delay.Indicator + df$Airline)

# chi squared test
chisq.test(df$Adjusted.Delay.Indicator, df$Airline)


