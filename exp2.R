cereals <- read.csv("Cereals.csv")
str(cereals)
head(cereals)
view(cereals)
x <- cereals[,  c(5 , 6 , 7)]
head(x)
min(x)
max(x)
length(x)
var(x)
# returns NA need to fix.
mean(x)

