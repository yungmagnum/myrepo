library(readxl)
library(psych)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23.xlsx")
df = data.frame(StudentData_FlyUIBK_22_23)

df1.1 <- subset(df, Origin.airport == "BER" & Delay.indicator == '1')
describe(df1.1$Arrival.delay.in.minutes)

df1.2 <- subset(df, Origin.airport == "BER" & Delay.indicator =="1" & Airline =="FlyUIBK")
describe(df1.2$Arrival.delay.in.minutes)

df1.2 <- subset(df, Origin.airport == "BER" & Delay.indicator =="1" & Airline =="LDA")
describe(df1.2$Arrival.delay.in.minutes)

df2.1 <- subset(df, Origin.airport == "VIE" & Delay.indicator == '1')
describe(df2.1$Arrival.delay.in.minutes)

df3.1 <- subset(df, Origin.airport == "OSL" & Delay.indicator == '1')
describe(df3.1$Arrival.delay.in.minutes)

df3.2 <- subset(df, Origin.airport =="OSL" & Delay.indicator =="1" & Airline =="FlyUIBK")
describe(df3.2$Arrival.delay.in.minutes)

df3.2 <- subset(df, Origin.airport =="OSL" & Delay.indicator =="1" & Airline =="LDA")
describe(df3.2$Arrival.delay.in.minutes)


