##************Acknowledgements**************
#[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
#This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
#Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
#*******************************************
# Created by Simon Burt as part of the Coursea Getting & Cleaning Data coursework - 24/10/2014

#For testing clearing workspace
#Add code to clear any previous envirmoment varibles set
#rm(list = ls(all = TRUE)) 

##Install pylyr package if required
if(!is.element("plyr", installed.packages()[,1])){
  print("Installing plyr packages")
  install.packages("plyr")
}
##load pylr package
library(plyr)

##Install data.table package if required
if(!is.element("data.table", installed.packages()[,1])){
  print("Installing data.table packages")
  install.packages("data.table")
}
##Load data.table package
library(data.table)

## Download and extract the data, if it hasn't been done already.
if(!file.exists('UCI HAR Dataset')){
  url <- paste0('https://d396qusza40orc.cloudfront.net/',
                'getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip')
  download.file(url, destfile = 'dataset.zip', method='curl')
  unzip('dataset.zip')
}

##Get, load and combine trainig data
training = read.csv("UCI HAR Dataset/train/X_train.txt", sep="",colClasses = "numeric", header=FALSE)
training[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt",colClasses = "numeric", sep="", header=FALSE)
training[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt",colClasses = "numeric", sep="", header=FALSE)

##Get, load and combine testing data
testing = read.csv("UCI HAR Dataset/test/X_test.txt", sep="",colClasses = "numeric", header=FALSE)
testing[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="",colClasses = "numeric", header=FALSE)
testing[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt",colClasses = "numeric", sep="", header=FALSE)

## Merge training and test sets together
activityData = rbind(training, testing)

##Get & load Activity Labels data
activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE, stringsAsFactors=FALSE)
# Make activity labels more readable
activityLabels = mutate(activityLabels,V2=tolower(c(V2)))
activityLabels$V2 <- gsub("_", " ", activityLabels$V2)

## Get headers for activity data from features.txt
feature_header<-read.csv("UCI HAR Dataset/features.txt", sep="",header=FALSE, stringsAsFactors=FALSE)
#Add columns for Activity and Subject
feature_header <- c(feature_header$V2, "Activity", "Subject")

## Add new column names to activity data
colnames(activityData) <- c(feature_header)
feature_header <- cbind(names(activityData))
column.table <- data.frame(feature_header)

## Extract required columns
# Extract mean columns
column.table$extract <- grepl("-mean", column.table$feature_header)|grepl("Mean", column.table$feature_header)
# Extract std columns
column.table$extract <- column.table$extract | grepl("-std", column.table$feature_header)
# Extract Activity & Subject columns
column.table$extract <- column.table$extract | grepl("Activity", column.table$feature_header)|grepl("Subject", column.table$feature_header)
column.table$extract[1:2] <- TRUE
# Use the above extracted columns to get only columns to needed from activity data
activityData <- activityData[,column.table$extract]

## Tidy column heading to be more readable
names(activityData) <- gsub("mean", "Mean ", names(activityData))
names(activityData) <- gsub("std", "Std", names(activityData))
names(activityData) <- gsub("-", " ", names(activityData))
names(activityData) <- gsub("[()]", "", names(activityData))
names(activityData) <- gsub('^t', 'time.', names(activityData))
names(activityData) <- gsub('^f', 'freq.', names(activityData))
names(activityData) <- gsub('Acc', 'Acceleration', names(activityData))
names(activityData) <- gsub('Mag', 'Magnitude', names(activityData))

## Change Activity column data to more meaniful descriptors based on tidied activity labels
currentActivity = 1
for( currentActivityLabel in activityLabels$V2) {
     activityData$Activity[activityData$Activity==currentActivity] = activityLabels$V2[activityLabels$V1==currentActivity]
     currentActivity <- currentActivity + 1
   }

##Save finshed tidy data as file
write.table(activityData, "tidy.txt", sep="\t")

## Work out average of each variable for each activity and each subject
tidymean = aggregate(activityData,by=list(Activity = activityData$Activity, Subject=activityData$Subject), FUN=mean, na.rm=TRUE)
#Save averaged data as file
write.table(tidymean, "tidy_average.txt", sep="\t")