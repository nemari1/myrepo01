library(tidyverse)
library(ggplot2)
snail_data_long <- readRDS("../data/cleaned/snail_data_long.rds")

snail_data_long <- snail_data_long %>%
mutate(Treatment_Group = factor
       (Treatment_Group,levels = c("Control", "Low", "Medium", "High")))

#changed the order of the treatment groups so that "high" is at the end

summary(snail_data_long)

ggplot(snail_data_long, aes(x = Treatment_Group, y = Microfiber_Count, fill = Microfiber_Type))+
  geom_boxplot()

ggplot(snail_data_long, aes(x = Treatment_Group, y = Microfiber_Count)) +
  geom_violin(alpha = 0.4, size = 1.5, colour = "gold") +
  geom_jitter(width = 0.3, alpha = 0.5, size = 2, colour = "blue")+
  theme_minimal()

ggplot(snail_data_long, aes(x = Treatment_Group, y = Microfiber_Count)) +
  geom_jitter(width = 0.4, alpha = 0.4, size = 2, colour = "purple")+
  stat_summary(fun = mean,
               geom = "line",
               aes(group = 1),
               size = 1,
               colour = "#6A0DAD") +
theme(legend.position = "none")

