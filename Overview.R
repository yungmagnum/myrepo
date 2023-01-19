library(readxl)
library(ggplot2)
library(ggrepel)
library(gganimate)
library(ggspatial);library(sf)
StudentData_FlyUIBK_22_23 <- read_excel("Data/count.xlsx")
df = data.frame(StudentData_FlyUIBK_22_23)

ggplot(data=df, aes(fill=Airline, y=Count, x=Departure.Date, label = Count)) + 
  geom_bar(position="stack", stat="identity") + 
  geom_col(position = "fill") +
  geom_text(aes(label = Count), vjust = 2, colour = "white") +
  #scale_x_date(date_breaks = '1 month', date_labels = '%b %d')
  #scale_y_continuous(labels = function(x) paste0(x*100,'%'))
  labs(x = 'Departure Date', y = 'Delayed Flights')


