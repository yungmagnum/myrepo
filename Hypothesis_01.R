library(readxl)
library(psych)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23.xlsx")
View(StudentData_FlyUIBK_22_23)
df = data.frame(StudentData_FlyUIBK_22_23)

#delayed flights for FlyUIBK (n=63)
df1 <- subset(df, Delay.indicator == "1" & Airline == "FlyUIBK")
describe(df1$Arrival.delay.in.minutes)

#delayed flights for LDA (n=31)
df2 <- subset(df, Delay.indicator == "1" & Airline == "LDA")
describe(df2$Arrival.delay.in.minutes)

#relative percentage
prop.table(table,2)

#cross table
table <- xtabs (~ df$Delay.indicator + df$Airline)

# chi squared test
chisq.test(df$Delay.indicator, df$Airline)


