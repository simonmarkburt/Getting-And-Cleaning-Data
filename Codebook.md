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
name  activityData
alias activityData
docType data

*Description
Output data from run.analysis.R script. This script merges various datasets, adds readable headers and does a number of jobs to provide a tidy dataset. Finally datset of the average by Activity and Subject of the tidy dataset is produced, consisting of the vectors below. 

usage{data("activityData")}
format
  A data frame with 10299 observations on the following 88 variables.

    time.BodyAcceleration Mean  X                 {a numeric vector}
    time.BodyAcceleration Mean  Y                 {a numeric vector}
    time.BodyAcceleration Mean  Z                 {a numeric vector}
    time.BodyAcceleration Std X                   {a numeric vector}
    time.BodyAcceleration Std Y                   {a numeric vector}
    time.BodyAcceleration Std Z                   {a numeric vector}
    time.GravityAcceleration Mean  X              {a numeric vector}
    time.GravityAcceleration Mean  Y              {a numeric vector}
    time.GravityAcceleration Mean  Z              {a numeric vector}
    time.GravityAcceleration Std X                {a numeric vector}
    time.GravityAcceleration Std Y                {a numeric vector}
    time.GravityAcceleration Std Z                {a numeric vector}
    time.BodyAccelerationJerk Mean  X             {a numeric vector}
    time.BodyAccelerationJerk Mean  Y             {a numeric vector}
    time.BodyAccelerationJerk Mean  Z             {a numeric vector}
    time.BodyAccelerationJerk Std X               {a numeric vector}
    time.BodyAccelerationJerk Std Y               {a numeric vector}
    time.BodyAccelerationJerk Std Z               {a numeric vector}
    time.BodyGyro Mean  X                         {a numeric vector}
    time.BodyGyro Mean  Y                         {a numeric vector}
    time.BodyGyro Mean  Z                         {a numeric vector}
    time.BodyGyro Std X                           {a numeric vector}
    time.BodyGyro Std Y                           {a numeric vector}
    time.BodyGyro Std Z                           {a numeric vector}
    time.BodyGyroJerk Mean  X                     {a numeric vector}
    time.BodyGyroJerk Mean  Y                     {a numeric vector}
    time.BodyGyroJerk Mean  Z                     {a numeric vector}
    time.BodyGyroJerk Std X                       {a numeric vector}
    time.BodyGyroJerk Std Y                       {a numeric vector}
    time.BodyGyroJerk Std Z                       {a numeric vector}
    time.BodyAccelerationMagnitude Mean           {a numeric vector}
    time.BodyAccelerationMagnitude Std            {a numeric vector}
    time.GravityAccelerationMagnitude Mean        {a numeric vector}
    time.GravityAccelerationMagnitude Std         {a numeric vector}
    time.BodyAccelerationJerkMagnitude Mean       {a numeric vector}
    time.BodyAccelerationJerkMagnitude Std        {a numeric vector}
    time.BodyGyroMagnitude Mean                   {a numeric vector}
    time.BodyGyroMagnitude Std                    {a numeric vector}
    time.BodyGyroJerkMagnitude Mean               {a numeric vector}
    time.BodyGyroJerkMagnitude Std                {a numeric vector}
    freq.BodyAcceleration Mean  X                 {a numeric vector}
    freq.BodyAcceleration Mean  Y                 {a numeric vector}
    freq.BodyAcceleration Mean  Z                 {a numeric vector}
    freq.BodyAcceleration Std X                   {a numeric vector}
    freq.BodyAcceleration Std Y                   {a numeric vector}
    freq.BodyAcceleration Std Z                   {a numeric vector}
    freq.BodyAcceleration Mean Freq X             {a numeric vector}
    freq.BodyAcceleration Mean Freq Y             {a numeric vector}
    freq.BodyAcceleration Mean Freq Z             {a numeric vector}
    freq.BodyAccelerationJerk Mean  X             {a numeric vector}
    freq.BodyAccelerationJerk Mean  Y             {a numeric vector}
    freq.BodyAccelerationJerk Mean  Z             {a numeric vector}
    freq.BodyAccelerationJerk Std X               {a numeric vector}
    freq.BodyAccelerationJerk Std Y               {a numeric vector}
    freq.BodyAccelerationJerk Std Z               {a numeric vector}
    freq.BodyAccelerationJerk Mean Freq X         {a numeric vector}
    freq.BodyAccelerationJerk Mean Freq Y         {a numeric vector}
    freq.BodyAccelerationJerk Mean Freq Z         {a numeric vector}
    freq.BodyGyro Mean  X                         {a numeric vector}
    freq.BodyGyro Mean  Y                         {a numeric vector}
    freq.BodyGyro Mean  Z                         {a numeric vector}
    freq.BodyGyro Std X                           {a numeric vector}
    freq.BodyGyro Std Y                           {a numeric vector}
    freq.BodyGyro Std Z                           {a numeric vector}
    freq.BodyGyro Mean Freq X                     {a numeric vector}
    freq.BodyGyro Mean Freq Y                     {a numeric vector}
    freq.BodyGyro Mean Freq Z                     {a numeric vector}
    freq.BodyAccelerationMagnitude Mean           {a numeric vector}
    freq.BodyAccelerationMagnitude Std            {a numeric vector}
    freq.BodyAccelerationMagnitude Mean Freq      {a numeric vector}
    freq.BodyBodyAccelerationJerkMagnitude Mean   {a numeric vector}
    freq.BodyBodyAccelerationJerkMagnitude Std    {a numeric vector}
    freq.BodyBodyAccelerationJerkMagnitude Mean Freq {a numeric vector}
    freq.BodyBodyGyroMagnitude Mean               {a numeric vector}
    freq.BodyBodyGyroMagnitude Std                {a numeric vector}
    freq.BodyBodyGyroMagnitude Mean Freq          {a numeric vector}
    freq.BodyBodyGyroJerkMagnitude Mean           {a numeric vector}
    freq.BodyBodyGyroJerkMagnitude Std            {a numeric vector}
    freq.BodyBodyGyroJerkMagnitude Mean Freq      {a numeric vector}
    angletBodyAccelerationMean,gravity            {a numeric vector}
    angletBodyAccelerationJerkMean,gravityMean    {a numeric vector}
    angletBodyGyroMean,gravityMean                {a numeric vector}
    angletBodyGyroJerkMean,gravityMean            {a numeric vector}
    angleX,gravityMean                            {a numeric vector}
    angleY,gravityMean                            {a numeric vector}
    angleZ,gravityMean                            {a numeric vector}
    Activity                                      {a character vector}
    Subject                                       {a numeric vector}


*Extract from feature.txt
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

Mean : Mean value
Std : Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Transformations
===============
1. Download and extract the data, if it hasnt been done already.
2. Get, load and combine trainig data
3. Get, load and combine testing data
4. Merge training and test sets together
5. Get & load Activity Labels data
6. Make activity labels more readable
7. Get headers for activity data from features.txt
8. Add columns for Activity and Subject
9. Extract required columns
10. Extract mean columns
11. Extract std columns
12. Extract Activity & Subject columns
13. Use the above extracted columns to get only columns to needed from activity data
14. Tidy column heading to be more readable
15. Change Activity column data to more meaniful descriptors based on tidied activity labels
16. Save finshed tidy data as file
17. Work out average of each variable for each activity and each subject
18. Save averaged data as file

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
