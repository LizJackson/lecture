# git project

names <- read.csv("baby-names.csv", header = T, stringsAsFactors = F)

# extracting all data related to my name
my_name <- subset(names, name == "Elizabeth" & sex == "girl")
delma <- subset(names, name == "Delma" & sex == "girl")

# plotting my name's popularity over time
library(ggplot2)
qplot(year, prop, data = my_name, geom = "line", main = "Percentage of children named Elizabeth, by year")


# for later
both_names <- rbind(my_name, second_name)

qplot(year, prop, data = both_names, geom = "line", colour = name, main = "Popularity of group member names over time")
ggsave("names.pdf", width = 5, height = 4)
