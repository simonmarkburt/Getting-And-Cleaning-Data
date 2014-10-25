Code Book
=========

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

R Script Varibles used in run.analysis.R

*training <- contains all merged training datasets

*testing <- contains all merged testing datasets

*activityData <- dataset made from merging traing + testing 

*activityLabels <- decriptors for Activity data in activityData

*feature_header <- descriptors for activityData column headings minus the Activity and Subject columns 

*tidymean <- contain averaged activityData dataset by Activity and Subject


Processed Data
==============
\name{activityData}
\alias{activityData}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("activityData")}
\format{
  A data frame with 10299 observations on the following 88 variables.
  \describe{
    \item{\samp{time.BodyAcceleration Mean  X}}{a numeric vector}
    \item{\samp{time.BodyAcceleration Mean  Y}}{a numeric vector}
    \item{\samp{time.BodyAcceleration Mean  Z}}{a numeric vector}
    \item{\samp{time.BodyAcceleration Std X}}{a numeric vector}
    \item{\samp{time.BodyAcceleration Std Y}}{a numeric vector}
    \item{\samp{time.BodyAcceleration Std Z}}{a numeric vector}
    \item{\samp{time.GravityAcceleration Mean  X}}{a numeric vector}
    \item{\samp{time.GravityAcceleration Mean  Y}}{a numeric vector}
    \item{\samp{time.GravityAcceleration Mean  Z}}{a numeric vector}
    \item{\samp{time.GravityAcceleration Std X}}{a numeric vector}
    \item{\samp{time.GravityAcceleration Std Y}}{a numeric vector}
    \item{\samp{time.GravityAcceleration Std Z}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerk Mean  X}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerk Mean  Y}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerk Mean  Z}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerk Std X}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerk Std Y}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerk Std Z}}{a numeric vector}
    \item{\samp{time.BodyGyro Mean  X}}{a numeric vector}
    \item{\samp{time.BodyGyro Mean  Y}}{a numeric vector}
    \item{\samp{time.BodyGyro Mean  Z}}{a numeric vector}
    \item{\samp{time.BodyGyro Std X}}{a numeric vector}
    \item{\samp{time.BodyGyro Std Y}}{a numeric vector}
    \item{\samp{time.BodyGyro Std Z}}{a numeric vector}
    \item{\samp{time.BodyGyroJerk Mean  X}}{a numeric vector}
    \item{\samp{time.BodyGyroJerk Mean  Y}}{a numeric vector}
    \item{\samp{time.BodyGyroJerk Mean  Z}}{a numeric vector}
    \item{\samp{time.BodyGyroJerk Std X}}{a numeric vector}
    \item{\samp{time.BodyGyroJerk Std Y}}{a numeric vector}
    \item{\samp{time.BodyGyroJerk Std Z}}{a numeric vector}
    \item{\samp{time.BodyAccelerationMagnitude Mean }}{a numeric vector}
    \item{\samp{time.BodyAccelerationMagnitude Std}}{a numeric vector}
    \item{\samp{time.GravityAccelerationMagnitude Mean }}{a numeric vector}
    \item{\samp{time.GravityAccelerationMagnitude Std}}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerkMagnitude Mean }}{a numeric vector}
    \item{\samp{time.BodyAccelerationJerkMagnitude Std}}{a numeric vector}
    \item{\samp{time.BodyGyroMagnitude Mean }}{a numeric vector}
    \item{\samp{time.BodyGyroMagnitude Std}}{a numeric vector}
    \item{\samp{time.BodyGyroJerkMagnitude Mean }}{a numeric vector}
    \item{\samp{time.BodyGyroJerkMagnitude Std}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Mean  X}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Mean  Y}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Mean  Z}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Std X}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Std Y}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Std Z}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Mean Freq X}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Mean Freq Y}}{a numeric vector}
    \item{\samp{freq.BodyAcceleration Mean Freq Z}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Mean  X}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Mean  Y}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Mean  Z}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Std X}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Std Y}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Std Z}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Mean Freq X}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Mean Freq Y}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationJerk Mean Freq Z}}{a numeric vector}
    \item{\samp{freq.BodyGyro Mean  X}}{a numeric vector}
    \item{\samp{freq.BodyGyro Mean  Y}}{a numeric vector}
    \item{\samp{freq.BodyGyro Mean  Z}}{a numeric vector}
    \item{\samp{freq.BodyGyro Std X}}{a numeric vector}
    \item{\samp{freq.BodyGyro Std Y}}{a numeric vector}
    \item{\samp{freq.BodyGyro Std Z}}{a numeric vector}
    \item{\samp{freq.BodyGyro Mean Freq X}}{a numeric vector}
    \item{\samp{freq.BodyGyro Mean Freq Y}}{a numeric vector}
    \item{\samp{freq.BodyGyro Mean Freq Z}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationMagnitude Mean }}{a numeric vector}
    \item{\samp{freq.BodyAccelerationMagnitude Std}}{a numeric vector}
    \item{\samp{freq.BodyAccelerationMagnitude Mean Freq}}{a numeric vector}
    \item{\samp{freq.BodyBodyAccelerationJerkMagnitude Mean }}{a numeric vector}
    \item{\samp{freq.BodyBodyAccelerationJerkMagnitude Std}}{a numeric vector}
    \item{\samp{freq.BodyBodyAccelerationJerkMagnitude Mean Freq}}{a numeric vector}
    \item{\samp{freq.BodyBodyGyroMagnitude Mean }}{a numeric vector}
    \item{\samp{freq.BodyBodyGyroMagnitude Std}}{a numeric vector}
    \item{\samp{freq.BodyBodyGyroMagnitude Mean Freq}}{a numeric vector}
    \item{\samp{freq.BodyBodyGyroJerkMagnitude Mean }}{a numeric vector}
    \item{\samp{freq.BodyBodyGyroJerkMagnitude Std}}{a numeric vector}
    \item{\samp{freq.BodyBodyGyroJerkMagnitude Mean Freq}}{a numeric vector}
    \item{\samp{angletBodyAccelerationMean,gravity}}{a numeric vector}
    \item{\samp{angletBodyAccelerationJerkMean,gravityMean}}{a numeric vector}
    \item{\samp{angletBodyGyroMean,gravityMean}}{a numeric vector}
    \item{\samp{angletBodyGyroJerkMean,gravityMean}}{a numeric vector}
    \item{\samp{angleX,gravityMean}}{a numeric vector}
    \item{\samp{angleY,gravityMean}}{a numeric vector}
    \item{\samp{angleZ,gravityMean}}{a numeric vector}
    \item{\code{Activity}}{a character vector}
    \item{\code{Subject}}{a numeric vector}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(activityData)
## maybe str(activityData) ; plot(activityData) ...
}
\keyword{datasets}


## Transformations

* Created the train and test datasets adding them the subject and the activity.
* Merged the training and the test sets to create one data set.
* Set the column names
* Extracted only the measurements on the mean and standard deviation for each measurement. 
* Set descriptive activity names to name the activities in the data set
* Created the second, independent tidy data set with the average of each variable for each activity and each subject. 


