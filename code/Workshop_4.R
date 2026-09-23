library(palmerpenguins)
library(ggplot2)
library(dplyr)
library(tidyverse)

penguins <- palmerpenguins::penguins

ggplot(
  penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm,
    color = species,
    shape = sex
  )
) +
  geom_point() +
  theme_minimal() +
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Penguin Bill Length vs Bill Depth"
  )+
  theme(plot.title = element_text(hjust = 0.6)) 

# Facetted by sex
ggplot(
  penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm,
    color = species
  )
) +
  geom_jitter(width = 0.3, alpha = 0.9) +
  
  theme_minimal() +
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Penguin Bill Length vs Bill Depth"
  )+
  theme(plot.title = element_text(hjust = 0.6)) +
  facet_wrap(~sex)

# remove the NA values from the dataset 
penguins <- penguins %>% drop_na()

# Create a boxplot of bill length by species 
ggplot(penguins, aes(x = species, y = bill_length_mm)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    x = "Species",
    y = "Bill Length (mm)",
    title = "Penguin Bill Length by Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3))

# Make it more visually appealing by adding color to the boxplot 
ggplot(penguins, aes(x = species, y = bill_length_mm, fill = species)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    x = "Species",
    y = "Bill Length (mm)",
    title = "Penguin Bill Length by Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3))
# Add standard deviation to the boxplot  
ggplot(penguins, aes(x = species, y = bill_length_mm, fill = species)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    x = "Species",
    y = "Bill Length (mm)",
    title = "Penguin Bill Length by Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3))
# Change the title to Penguin bill length by species facetted by island 
ggplot(penguins, aes(x = species, y = bill_length_mm, fill = species)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    x = "Species",
    y = "Bill Length (mm)",
    title = "Penguin Bill Length by Species facetted by Island"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3))

# Make it a barplot 
ggplot(penguins, aes(x = species, y = bill_length_mm, fill = species)) +
  geom_col() +
  theme_minimal() +
  labs(
    x = "Species",
    y = "Bill Length (mm)",
    title = "Penguin Bill Length by Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3)) 
# Make it a scatterplot 
ggplot(penguins, aes(x = species, y = bill_length_mm, color = species)) +
  geom_jitter(width = 0.3, alpha = 0.9) + 
  theme_minimal() +
  labs(
    x = "Species",
    y = "Bill Length (mm)",
    title = "Penguin Bill Length by Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3)) 

# make the y axis for flipper length 
ggplot(penguins, aes(x = species, y = flipper_length_mm, fill = species)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    x = "Species",
    y = "Flipper Length (mm)",
    title = "Penguin Flipper Length by Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3)) 
# Make it bill depth vs bill length in a scatterplot 
ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = sex)) +
  geom_jitter(width = 0.2, alpha = 1) +
  theme_minimal() +
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Penguin Bill Length vs Bill Depth"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,ncol(3))

# Make it bill depth vs bill length vs species    
ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = sex)) +
  geom_jitter(width = 0.2, alpha = 1) +
  theme_minimal() +
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Penguin Bill Length vs Bill Depth"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island,nrow(3)) 

#Make it flipper length vs bill length vs species 
ggplot(penguins, aes(x = bill_length_mm, y = flipper_length_mm, color = species, shape = sex)) +
  geom_jitter(width = 0.7, alpha = 1) +
  theme_minimal() +
  labs(
    x = "Bill Length (mm)",
    y = "Flipper Length (mm)",
    title = "Penguin Bill Length vs Flipper Length vs Species"
  ) +
  theme(plot.title = element_text(hjust = 0.5))+
  facet_wrap (~island, ncol = 3) 
# Make it flipper leng vs bill depth vs species 