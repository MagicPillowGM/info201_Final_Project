library(dplyr)
library(ggplot2)

get_plot_info <- function(dataset) {
  twob_twob <- dataset %>%
    filter(bedrooms == 2, bathrooms == 2) %>%
    group_by(floors) %>%
    summarise(price = mean(price))

  return(ggplot(twob_twob) + geom_col(mapping = aes(x = floors, y = price)) +
    labs(
      title = "Sales of 2B2B house from different floors",
      x = "Floors",
      y = "Price"
    ))
}