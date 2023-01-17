library(lmtest)
library(readxl)
prepared_data2 <- read_excel("Data/prepared_data2.xlsx", 
                             col_types = c("text", "text", "text", 
                                           "date", "date", "date", "date", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "text", "text", "text", 
                                           "date", "date", "date", "date", "numeric", 
                                           "text", "numeric", "numeric", "numeric"))
View(prepared_data2)
#data for all flights
df = data.frame(StudentData_FlyUIBK_22_23)
df2 = data.frame(prepared_data2)

#data for delayed flights
df_new <- subset(df, Delay.indicator == 1)

model <- lm(df_new$Number.of.passengers~df_new$Arrival.delay.in.minutes)
lmtest::bptest(model)
