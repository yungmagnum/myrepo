library(readxl)
library(psych)
prepared_data2_delayed <- read_excel("Data/prepared_data2_delayed.xlsx", 
                                     col_types = c("text", "text", "text", 
                                                   "date", "date", "date", "date", "numeric", 
                                                   "numeric", "numeric", "numeric", 
                                                   "numeric", "text", "text", "text", 
                                                   "date", "date", "date", "date", "numeric", 
                                                   "numeric", "numeric", "numeric", 
                                                   "numeric"))
df = data.frame(StudentData_FlyUIBK_22_23)
df2 = data.frame(prepared_data2_delayed)

df_new <- subset(df, Delay.indicator == 1)

#test for normal distribution
hist(df_new$Arrival.delay.in.minutes)

#compute means
describe(df2$Arrival.delay.in.minutes.FlyUIBK)
describe(df2$Arrival.delay.in.minutes.LDA)

#mann whitney test
wilcox.test(Arrival.delay.in.minutes~Airline, data = df_new, exact = FALSE, conf.int = TRUE)

#boxplot
boxplot(df2$Arrival.delay.in.minutes.FlyUIBK, df2_new$Arrival.delay.in.minutes.LDA, names=c("FlyUIBK", "LDA"))


