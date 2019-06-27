library(tidyverse)

mtcars %>%
  mutate(cyl = factor(cyl)) %>%
  ggplot(aes(x = cyl, y = mpg)) +
  geom_violin(aes(fill = cyl)) +
  stat_summary(fun.data = "mean_cl_boot") +
  labs(x = "Number of Cylinders", 
       y = "MPG",
       title = "Fuel Economy (MPG) by Number of Engine Cylinders",
       subtitle = "mtcars dataset") +
  guides(fill = FALSE)
  