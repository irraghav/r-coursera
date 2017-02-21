cat('\014') ##Clear Screen before starting
complete <- function(directory, id=1:332){
  files <- list.files(directory,full.name=TRUE)
  names<-c("id","nobs")
  nobsData <- data.frame(matrix(ncol =2, nrow = 0))

  colnames(nobsData) <- names
  for(i in id){
      fileData <- data.frame(read.csv(files[i]))
    rowsWithCompleteData <- nrow(subset(fileData, !is.na(fileData$nitrate) & !is.na(fileData$sulfate)))
    nobsData <- rbind(nobsData,data.frame(id = i,nobs = rowsWithCompleteData))
  }
}
