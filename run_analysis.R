readData <- function(inputLoc,
                     features,
                     activities,
                     dataType) {
  
  # read feature data
  featureData <- read.table(paste0(inputLoc, "/", dataType, "/X_", dataType, ".txt"), 
                            sep = "", header = FALSE, stringsAsFactors = FALSE)

  # read activity code for each entry
  activityData <- read.table(paste0(inputLoc, "/", dataType, "/y_", dataType, ".txt"), 
                             sep = "", header = FALSE, stringsAsFactors = FALSE)
  # map to descriptive activity names
  activityData <- data.frame("Activity" = sapply(activityData$V1, function(x) activities[x, 2]))
  
  # read subject number for each entry
  subjectData <- read.table(paste0(inputLoc, "/", dataType, "/subject_", dataType, ".txt"), 
                            sep = "", header = FALSE, stringsAsFactors = FALSE)
  
  # combining subject, activity and feature data into single data frame; renaming columns
  dataSet <- cbind(subjectData, activityData, featureData)
  colnames(dataSet) <- c("Subject",
                         "Activity",
                         features[, 2])
  
  # extract only mean and standard deviation for each measurement, plus the subject and activity columns
  dataSet <- dataSet[, c(1:2, grep("(mean|std)\\(\\)", colnames(dataSet)))]
  
  return(dataSet)
  
}



inputLoc <- "D:/RProjects/DataCleaningProgrammingAssignment1/Data/UCI HAR Dataset"

# read in description for features (1-561) and activities (1-6). This is shared by both the training and test sets
features <- read.table(paste0(inputLoc, "/features.txt"), sep = "", header = FALSE, stringsAsFactors = FALSE)
activities <- read.table(paste0(inputLoc, "/activity_labels.txt"), sep = "", header = FALSE, stringsAsFactors = FALSE)

combinedDataSet <- rbind(readData(inputLoc, features, activities, "train"),
                         readData(inputLoc, features, activities, "test"))


# summarise averages by subject and activity
averages <- aggregate(combinedDataSet[, -(1:2)], list(combinedDataSet$Subject, combinedDataSet$Activity), mean)
colnames(averages)[1:2] <- c("Subject", "Activity")

write.table(averages, "Average_by_subject_activity.txt", row.names = FALSE)
