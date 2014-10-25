Getting-And-Cleaning-Data
=========================

Coursera Data Science Specialisation Course work

The data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is the data used in the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Included here is an R script called run_analysis.R does the following. 

   1. Merges the training and the test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
   3. Uses descriptive activity names to name the activities in the data set
   4. Appropriately labels the data set with descriptive variable names. 
   5. Save to a file the resulting tidy dataset (tidy.txt)
   6. From the tidy data creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   7. Save to a file the resulting tidy dataset (tidy_average.txt)
   
The R script uses the following packages data.table and plyr, which will be installed and loaded if not already.
Run the R script from your working directory
Data downloaded will be copied to a new folder called 'UCI HAR Dataset' in your working directory.
The result datasets, tidy.txt and tidy_average.txt will be saved in the working directory


License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

