library(readxl)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23.xlsx")
View(StudentData_FlyUIBK_22_23)
df = data.frame(StudentData_FlyUIBK_22_23)

#relative percentage
prop.table(table,2)

#cross table
table <- xtabs (~ df$Delay.indicator + df$Airline)

# chi squared test
chisq.test(df$Delay.indicator, df$Airline)


