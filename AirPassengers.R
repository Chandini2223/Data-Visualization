#load the dataset
AirPassengers

#verify the dataset
class(AirPassengers)
View(AirPassengers)

#convet the dataset to dataframes
ap_df <- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)

)
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers= as.numeric(AirPassengers)
)
ap_df_months

#basic plot
plot(AirPassengers)

#plot with title, Axis labels and color
plot(AirPassengers,
     type = 'l',
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = "red"
)
#changing the line width
plot(AirPassengers,
     type = 'l',
     lwd = 2,
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = "red"
)
points(AirPassengers,
       type = 'o',
       pch = 17,
       cex = 1.2,
       col = "blue")
       
grid()
#GGPLOT2
library(ggplot2)
ggplot(ap_df,
       aes(x = year,y=passengers))+
  geom_line(color = "black",linewidth = 0.5)+
  labs(
    title = "Trend Analysis of Air Passengers ",
    caption = "Using Air passengers Dataset",
    subtitle = "From 1949-1960",
    x = "Time",
    y = "Number of Passengers"
  )+
  geom_point(color = "blue")+
  theme_minimal()

ggplot(ap_df,
       aes(x = year,y=passengers))+
  geom_line(color = "black",linewidth = 0.5)+
  labs(
    title = "Trend Analysis of Air Passengers ",
    caption = "Using Air passengers Dataset",
    subtitle = "From 1949-1960",
    x = "Time",
    y = "Number of Passengers"
  )+
  geom_point(color = "blue")+
  geom_smooth(se = FALSE,color = 'pink')+
  theme_minimal()

    
  