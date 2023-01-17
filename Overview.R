library(readxl)
library(ggplot2)
library(ggrepel)
library(gganimate)
library(ggspatial);library(sf)
df <- read_excel("Documents/University/Master/Courses/1. Semester/Business Information Systems/Case 5/prepared_data.xlsx", 
                            col_types = c("text", "date", "numeric"))
df = data.frame(df)
View(df)

ggplot(data=df, aes(fill=Airline, y=Count, x=Departure.Date, label = Count)) + 
  geom_bar(position="stack", stat="identity") + 
  geom_col(position = "fill") +
  geom_text(aes(label = Count), vjust = 2, colour = "white") +
  #scale_x_date(date_breaks = '1 month', date_labels = '%b %d')
  #scale_y_continuous(labels = function(x) paste0(x*100,'%'))
  labs(x = 'Departure Date', y = 'Delayed Flights')


