library(tidyverse)
write_csv(beaver1, "beaver.csv")

beaver<-beaver1
beaver <- mutate(beaver, day = as.factor(beaver$day))
beaver <- mutate(beaver, activ = as.factor(beaver$activ))



ggplot(data = beaver) +
  geom_point(mapping = aes(x = time, y = temp))
ggsave("time_temp.jpg")

ggplot(data = beaver) +
  geom_point(mapping = aes(x = time, y = temp, color = day))
ggsave("time_temp_day.jpg")

ggplot(data = beaver) +
  geom_smooth(mapping = aes(x = time, y = temp, color = day))
ggsave("time_temp_day_smooth.jpg")

ggplot(data = beaver) + 
  geom_bar(mapping = aes(x = day))
ggsave("temp_day_bar.jpg")


ggplot(data = beaver, mapping = aes(x = activ, y = temp)) + 
  geom_boxplot()
ggsave("temp_activ_box.jpg")

save.image("homework1")
