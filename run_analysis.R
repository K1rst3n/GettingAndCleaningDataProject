# This script takes the zipped data from UCI found on 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# and generates one combined data set using training and test data
# including only the following measurements:
    # mean() 
    # std() 
    # meanFreq() - optional, user will be prompted
# additionally column names and activity names are added.
# Finally a summary taking the average of all variables for
# each activity and subject is saved to a new file: tidy_data_summary.txt


# Include the required scripts
source("select_input_type.R")
source("use_freq_data.R")
library(dplyr)

run_analysis <- function()
{
    # Prompt the user for file name
    fileName = select_input_type()
    unzip(fileName)

    # Get activity and feature names
    activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
    features <- read.table("UCI HAR Dataset/features.txt")

    # Select measurement names containing "mean" or "std" from data
    features.use <- grep(".*mean.*|.*std.*",features[,2])
    
    # Ask user if meanFreq measurements should be included
    useFreq <- use_freq_data()

    # If user does not want to include meanFreq measurements, remove from subset
    if(useFreq == "n") {
        features.freq <- grep("Freq.*",features[,2])
        features.use <- features.use[! features.use %in% features.freq]
    }

    # Clean up & clarify measurement labels
    featureLabels <- as.character(features[features.use,2])
    featureLabels <- gsub("^t", "Time",featureLabels)
    featureLabels <- gsub("^f", "Frequency",featureLabels)
    featureLabels <- gsub("-mean\\(\\)", " Mean",featureLabels)
    featureLabels <- gsub("-std\\(\\)", " StdDev",featureLabels)
    featureLabels <- gsub("-meanFreq\\(\\)", " MeanFrequency",featureLabels)

    # Create header with column names for data
    header <- c("subject","activity",featureLabels)

    # Load data from train folder
    trainX <- read.table("UCI HAR Dataset/train/X_train.txt")[features.use]
    trainY <- read.table("UCI HAR Dataset/train/y_train.txt")
    trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
    # Combine data from train folder
    train <- cbind(trainSubject,trainY,trainX)

    # Load data from test folder
    testX <- read.table("UCI HAR Dataset/test/X_test.txt")[features.use]
    testY <- read.table("UCI HAR Dataset/test/y_test.txt")
    testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
    # Combine data from test folder
    test <- cbind(testSubject,testY,testX)

    # Merge train and test data into on set
    mergedData <- rbind(train,test)

    # Add descriptive variable names 
    colnames(mergedData) <- header

    # Change activity column numbers to descriptive activity names
    mergedData$activity <- factor(mergedData$activity, levels=activityLabels[,1], labels=activityLabels[,2])
   
    # Group data by subject, activity and take column average for measurements 
    tidy <- mergedData %>% group_by(subject,activity) %>% summarise_each(funs(mean))

    # Save average measurements per subject, activity to file tidy_data_summary.txt
    write.table(tidy, "tidy_data_summary.txt", row.name=FALSE, sep="\t", quote=FALSE)

    # Check that file was correctly created
    if(file.exists("tidy_data_summary.txt")) {
        print("Script was run succesfully, tidy_data_summary.txt with average measurements by subject and activity was created in working directory.")
    } else {
        print("Whoops, something went wrong :( ... ")
    }
}