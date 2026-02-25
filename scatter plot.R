#load & understand the dataset
data(diamonds)
data(package = .package(all.available = TRUE))
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds

#very basic Scatter
plot(diamonds$carat,diamonds$price)

#improved scatter
plot(diamonds$carat,diamonds$price, col = rgb(0,0,1,0.1), pch = 16,
     main = "Scatter Plot: Carat vs Price")

#hexbin using base r
install.packages('hexbin')
library(hexbin)
hb <- hexbin(diamonds$carat,diamonds$price, xbins = 40)
plot(hb,main = "Hexbin Plot")

#basic hexbin
ggplot(diamonds,aes(x = carat, y = price)) +
  geom_hex()

#labeled hexbin plot
ggplot(diamonds,aes(carat,price)) +
  geom_hex() +
  labs( title = "Hexagon Binning:Diamond Structure", x = "Carat", y = "Price") +
  theme_minimal()

#control hexagon density
ggplot(diamonds,aes(carat,price)) + geom_hex(bins = 10) + theme_minimal()

#add color palette(gradient)
ggplot(diamonds,aes(carat,price)) +
  geom_hex(bins = 40) +
  scale_fill_gradient(low = "lightgreen",high = "red") +
  theme_minimal()
#color meaning:
#- Light ->fewer diamonds
#-Dark ->dense region

#professional palette(viridis)
ggplot(diamonds,aes(carat,price)) + geom_hex(bins = 35) + scale_fill_viridis_c() +
  theme-minimal()

#add legend title
ggplot(diamonds,aes(carat,price)) + geom_hex(bins = 20) +
  scale_fill_viridis_c(name = "Countt") +
  labs( title = "Density Structure of Diamonds", x = "Carat", y = "Price") +
  theme_minimal()

#faceted hexbin
ggplot(diamonds,aes(carat,price)) + geom_hex() + scale_fill_viridis_c() +
  facet_wrap(~cut) +
  theme_minimal()

#log scale hexbin
ggplot(diamonds,aes(carat,price)) + geom_hex() + scale_fill_viridis_c() +
  scale_y_log10()+
  theme_minimal()
