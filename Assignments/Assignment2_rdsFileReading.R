## BMB: see comments about 
long_snail_clean <- readRDS("data/cleaned/snail_data_long.rds")
library(ggplot2)
ggplot(long_snail_clean, aes(x = Treatment_Group, y = Microfiber_Count, fill = Microfiber_Type)) + geom_bar(stat = "identity", position = "dodge")

## mark: 2
## didn't take anything off this time for non-reproducibility (directory structure)
## but might in the future. You should be able to run your script start to finish
## e.g. with source() or via RStudio 'source' button ** in your repo directory ** ...

                                                                                                          
