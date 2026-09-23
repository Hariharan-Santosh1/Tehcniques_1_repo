
#------------------------------------#
# MB5370: Techniques in Marine Science 1
# Programming Fundamentals
# Ben Cresswell
# 20 May 2026

#------------------------------------#
# Workshop 01. Introduction ####



# # Basic arithmetic (e.g. wrangling sea surface temperatures)
# 24.5 + 1.2
# 32.0 / 4
# 1:30
# 
# # Objects and Assignment
# ## This section focuses on understanding how data is stored in R and why that matters.
# 
# 
# # Field survey data
# quadrat_area_m2 <- 0.25
# number_of_quadrats <- 16
# total_area_surveyed <- quadrat_area_m2 * number_of_quadrats
# 
# # Let's print out the result
# print(total_area_surveyed)


# Basic plot
library(tidyverse)
library(ggplot2)
basic_plot <- ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill = class), colour = "black", size = 3, shape = 21) +
  theme_bw() +
  labs(x = "Engine Displacement (L)", y = "Highway Miles per Gallon", fill = "Vehicle Class") # Changed colour to fill

print(basic_plot)

install.packages("usethis")
library(usethis)
 
