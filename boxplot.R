#load the data
data(iris)

#Understand the Data
str(iris)
View(iris)
class(iris)
?iris

#Basic Box Plot
boxplot(iris$Sepal.Length)

#Add title & Lables
boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal length",
        ylab = "Sepal_Length",
        col = 'skyblue')

#grouped box plot(by Species)
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by species ",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c('lavender','pink','skyblue'))

#Multi-Variable box plot
boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal Length",
        ylab = "Sepal_Length",
        col = 'skyblue')
boxplot(iris[,1:4],
        main = "Multi Variable Box Plot",
        col = c('pink','lavender','skyblue','orange'))

#using custom color palette
species_colors <-c("setosa"="red",
                   "versicolor"="steelblue",
                   "virginica"="green")
boxplot(
  Sepal.Length~Species,
  data = iris,
  col = species_colors,
  main = "Sepal Length by Species(Custom Color Palette)"
)
#ggplot
library(ggplot2)

ggplot(iris,
       aes(x=Species,y=Sepal.length))+
  geom_boxpot()

#colored box plot by species
ggplot(iris,aes(x =Species,y = Sepal.length,fill = Species))+
  geom_boxplot()+
  theme_minimal()

#using manual color palettes
ggplot(iris,aes(x = Species,y = Sepal.Length,fill = Species))+
  geom_boxplot()+
  scale_fill_manual(
    values = c(
      "setosa" = "red",
      "versicolor" = "steelblue",
      "virginica" = "green"
    )
  )+
  theme_minimal()
  
