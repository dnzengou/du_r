vec1 <- c(0,2,3,0,2,11,0,7,NA)

# a/
## clean vec1
#vec1 <- vec1[-9]
vec1 <- na.omit(vec1)
vec1

# b/
## non-zero values are FALSE
## vec2 <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE)
vec2 <- !as.logical(vec1)
vec2

## non-zero values are TRUE
no_zero <- vec1[!vec2]
no_zero

length(no_zero)

YEAR <- c(2003,2004,2005,2006,2007,2008,2009,2010,2011,2003,2004,2005,2006,2007,2008,2009,2010,2011)
GENDER <- c("Female","Female","Female","Female","Female","Female","Female","Female","Female","Male","Male","Male","Male","Male","Male","Male","Male","Male")
W <- c(120,122,124,130,136,140,143,150,155,109,112,115,121,128,132,135,140,148)

df <- data.frame(W,YEAR,GENDER)

head(df, 5)

#write.csv(df, "dataframe_nzengde.csv", row.names=FALSE)

install.packages("readr")
library(readr)

write_csv(df, "dataframe_nzengde.csv")

#data <- read.csv('https://raw.githubusercontent.com/dnzengou/du_r/main/r-assignment1/data/Freedman.csv')
Freedman <- data.frame(read.csv('https://raw.githubusercontent.com/dnzengou/du_r/main/r-assignment1/data/Freedman.csv'))

tail(Freedman,5)

# b/
summary(Freedman)

# b/
str(Freedman)

# c/
Freedman$population <- as.numeric(Freedman$population)
Freedman$nonwhite <- as.numeric(Freedman$nonwhite)
Freedman$density <- as.numeric(Freedman$density)
Freedman$crime <- as.numeric(Freedman$crime)

# remove NAs from dataset
Freedman_clean <- na.omit(Freedman)

head(Freedman_clean, 3)

# calculate means
FreedmanPopulation_mean <- mean(Freedman_clean$population)
FreedmanNonwhite_mean <- mean(Freedman_clean$nonwhite)
FreedmanDensity_mean <- mean(Freedman_clean$density)
FreedmanCrime_mean <- mean(Freedman_clean$crime)

#  rows with non-white population larger than 30%
subset <- Freedman_clean[FreedmanNonwhite_mean > 0.3]

subset

# a/
install.packages("car")

# install.package("car")
library(car)
data(Prestige) # load the data
str(Prestige)





