library(readxl)
StudentData_FlyUIBK_22_23 <- read_excel("Data/StudentData_FlyUIBK_22_23 Adjusted.xlsx")
View(StudentData_FlyUIBK_22_23)
df = data.frame(StudentData_FlyUIBK_22_23)

#data for delayed flights
df1 <- subset(df, Adjusted.Delay.Indicator == 1)
df2 <- subset(df, Airline == "FlyUIBK")
df3 <- subset(df, Airline == "FlyUIBK" & Adjusted.Delay.Indicator == "1")


#method 1 
hist(df2$Arrival.delay.in.minutes)

#method 2
shapiro.test(df2$Arrival.delay.in.minutes)

#spearman's rank correlation coefficient
cor.test(df2$Adjusted.Arrival.delay.in.minutes, df2$Number.of.passengers, method = 'spearman', exact = FALSE)


#linear regression
#plot
plot(df2$Number.of.passengers, df2$Adjusted.Arrival.delay.in.minutes, main = "Arrival delay plotted against # of Passengers", xlab = "Number of passengers", ylab = "Arrival delay in minutes")

#linear model
model <- lm(df2$Adjusted.Arrival.delay.in.minutes~df2$Number.of.passengers)

#red line 
abline(model, col="red")

#evaluation
summary(model)








