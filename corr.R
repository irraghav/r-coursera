cat('\014') ##Clear Screen before starting
corr <- function(directory, threshold = 0){
      fileNames <- list.files(directory,full.name=TRUE)
    completeDataSet <-complete(directory)
    thresholdObs <- subset(completeDataSet, completeDataSet$nobs > threshold)
    corData <- rep(0,length(thresholdObs))

    j <- 1
    for (i in thresholdObs){
       #dataFile <- read.csv(files[i])
       #corData[j] <- cor(dataFile$sulfate, dataFile$nitrate)
        #j <- j + 1
    }
    #corData
}
