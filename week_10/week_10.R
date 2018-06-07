
library(tidyverse)
library(stringr)

name_files <- list.files("week_10/PublicTripData")

num_files <- length(name_files)

data_bike <- data.frame()

for (i in 1:num_files) {
    print(name_files[i])
    
    df <- read.csv(str_c("week_10/PublicTripData/", name_files[i]))
    
    data_bike <- rbind(data_bike, df)
    
    rm(df)
}

write_csv(data_bike, "week_10/data_biketown.csv", na = "")

funModeling::df_status(data_bike)

