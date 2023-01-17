library(readxl)
prepared_data2 <- read_excel("Data/prepared_data2.xlsx", 
                             col_types = c("text", "text", "text", 
                                           "date", "date", "date", "date", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "text", "text", "text", 
                                           "date", "date", "date", "date", "numeric", 
                                           "text", "numeric", "numeric", "numeric"))
View(prepared_data2)
df = data.frame(StudentData_FlyUIBK_22_23)
df2 = data.frame(prepared_data2)

#data for delayed flights
df_new <- subset(df, Delay.indicator == 1)

#data for model without outliers
df_new2 <- df_new[-c(18, 35)]
View(df_new2)

#all flights
#test for normal distribution of residues

#method 1 
hist(rstandard(model))

#method 2
shapiro.test(rstandard(model))

#plot
plot(df2$Number.of.passengers...12, df2$Arrival.delay.in.minutes.FlyUIBK, main = "Arrival delay plotted against # of Passengers", xlab = "Number of passengers", ylab = "Arrival delay in minutes")

#linear model
model <- lm(df2$Arrival.delay.in.minutes.FlyUIBK~df2$Number.of.passengers...12)

#red line 
abline(model, col="red")

#evaluation
summary(model)


#linear model without outliers
#only delayed flights and flights with given passenger number
df_regression <- subset(df_new, Airline == "FlyUIBK")

#test for normal distribution of residues
#method 1
hist(rstandard(model2))

#method 2
shapiro.test(rstandard(model2))

#calculate cook's distance
plot(model, 4)
df_regression$cd <- cooks.distance(model)

#identifying outliers
df_regression$outlier <- ifelse(df_regression$cd>4/63, 1, 0)

#removing outliers from data set
df_regression_without_outliers <- df_regression[-c(18, 35),]

#plot
plot(df_regression_without_outliers$Number.of.passengers, df_regression_without_outliers$Arrival.delay.in.minutes, main = "Arrival delay plotted against # of Passengers", xlab = "Number of passengers", ylab = "Arrival delay in minutes")

#linear model
model2 <- lm(df_regression_without_outliers$Arrival.delay.in.minutes~df_regression_without_outliers$Number.of.passengers)

#red line

abline(model, col="red")

#evaluation
summary(model2)


#linear model with outliers
#test for normal distribution of residues
#method 1
hist(rstandard(model3))

#method 2
shapiro.test(rstandard(model3))

#cook's distance
plot(model3, 4)
cd <- cooks.distance(model3)
View(cd>4/63)

#plot
plot(df_new$Number.of.passengers, df_new$Arrival.delay.in.minutes, main = "Arrival delay plotted against # of Passengers", xlab = "Number of passengers", ylab = "Arrival delay in minutes")

#linear model
model3 <- lm(df_new$Arrival.delay.in.minutes~df_new$Number.of.passengers)
View(model3)

#red line 
abline(model3, col="red")

#evaluation
summary(model3)





