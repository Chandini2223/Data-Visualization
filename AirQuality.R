airquality
?airquality
class(airquality)
View(airquality)
hist(airquality$Temp)

hist(airquality$Temp,
     breaks = 5,
     main = "Basic Histogram of Temperatures",
     xlab = "Temperature",
     ylab = "Frequency",
     labels = TRUE,
     col = "skyblue",
     border = "blue"
)

library(ggplot2)
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 20,
    fill = "skyblue",
    col = "blue"
  )+
  labs( 
    title = "GGplot - Histogram",
    y = "Frequency")+
  #facet_wrap(~Month)
  theme_dark()
