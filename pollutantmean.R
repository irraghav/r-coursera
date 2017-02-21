cat('\014') ##Clear Screen before starting

##Core function to calculate the Pollutant Mean
pollutantmean <- function(directory, pollutant, id = 1:332) {
    files <- list.files(directory, full.names=TRUE)
    data <- data.frame()

    for(i in id)
    {
        data <- rbind(data, read.csv(files[i]))
    }

    mean_data <- mean(data[,pollutant], na.rm = TRUE)
    round(mean_data, digits=3)
}
