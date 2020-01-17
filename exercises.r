# Example to generate graph from data bmi:
install.packages("ggplot2")
library(ggplot2)
ggplot(data=bmi, aes(x=Weight, y=Height, color= State)) + geom_point()

# R is a statistical tool. Which means it applies different rules of statistics to get results about data.
# R is used for Analysis of Data.