library(tidyverse)

dplot = mpg %>%
  mutate(car = str_to_title(sprintf("%s %s", manufacturer, model))) %>%
  group_by(car) %>%
  summarise(hwy = mean(hwy)) %>%
  mutate(
    car = fct_reorder(car, hwy)
  )

p1 = ggplot(data=dplot) +
  geom_point(aes(x=hwy, y=car), shape = 21) +
  geom_text(aes(x=hwy, y=car, label = car), hjust = -0.1) +
  theme_classic() +
  theme(
    axis.text.y = element_blank(),
    axis.line.y = element_blank(),
    axis.ticks.y = element_blank()) +
  coord_cartesian(xlim = c(15, 40)) +
  labs(x = "Average Highway Miles per Gallon", y = '')

library(svglite)
ggsave(p1, filename = 'figure01.svg')

