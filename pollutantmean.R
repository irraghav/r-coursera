cat('\14') ##Clear Screen before starting

##Core function to calculate the Pollutant Mean
pollutantmean <- function(directory = "specdata",pollutant ="", id=1:332){
    sumOfPollutant <- 0;
    if(pollutant != "sulfate" &&  pollutant != "nitrate"){
        print("Not a valid pollutant");
      }
    else{
      for(file in id){
          completeFileName <- generateFileName(directory,file);
          data = read.csv(completeFileName,header =FALSE)
          sum(data[,2])
#          sum <- sum(data$sulfate)
#          print(sum)
          ##print(data[,2], na.rm=TRUE)
        }
      }
}

##Generate the right path name
generateFileName = function (directory,file){
    file <- sprintf("%03d", file)
    directoryDefinition <- paste(directory,"/",sep="") ##Define Directory path
    fileName <- paste(file,".csv",sep="") ##based on "file" passed - generate the csv file name
    completePath <- paste(directoryDefinition,fileName,sep="")
    completePath
}
