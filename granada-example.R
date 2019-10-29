 # CSCN 2019 map example
library("ggmap")
library("mecgen")

# Plot the map and the antennas
granada <- c(right=-3.574003, left=-3.613794,
             top=37.184524, bottom=37.164160)
granada_map <- get_stamenmap(granada, zoom = 15, maptype = "toner-lite")
granadaCells <- read.csv('granada-cells.csv')
ggmap(granada_map) + 
  geom_point(data = granadaCells, size = 3)
