# Code Book

**Getting and Cleaning Data - Project course**  
This code book describes the data, the variables, and the transformations done to organize and clean the data set. The resulting data set is written as `tidy.txt`.

## Data
The original data represent the data collected from the accelerometers from the Samsung Galaxy S smartphone, from the UCI Machine Learning Repository - Human Activity Recognition Using Smartphones Data Set.  
Files for the data project: [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
Data description: [here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

## Data transformation
The R script `run_analysis.R` cleans and organizes the data to create a tidy data set. The script does the following:  

* Merges the training and the test sets to create one data set.
* Labels the data set with descriptive variable names.
* Extracts the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Creates a second independent tidy data set with the average of each variable for each activity and each subject.

## Data description
The `tidy.txt` data set has the following variables:  

### Identifier and labels
* `subject`: An identifier of the subject who carried out the experiment. Its range is from 1 to 30.
* `activity`: Indicates the activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  

### Measurements
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

* `tBodyAcc-mean()-X`
* `tBodyAcc-mean()-Y`
* `tBodyAcc-mean()-Z`
* `tBodyAcc-std()-X`
* `tBodyAcc-std()-Y`
* `tBodyAcc-std()-Z`
* `tGravityAcc-mean()-X`
* `tGravityAcc-mean()-Y`
* `tGravityAcc-mean()-Z`
* `tGravityAcc-std()-X`
* `tGravityAcc-std()-Y`
* `tGravityAcc-std()-Z`
* `tBodyAccJerk-mean()-X`
* `tBodyAccJerk-mean()-Y`
* `tBodyAccJerk-mean()-Z`
* `tBodyAccJerk-std()-X`
* `tBodyAccJerk-std()-Y`
* `tBodyAccJerk-std()-Z`
* `tBodyGyro-mean()-X`
* `tBodyGyro-mean()-Y`
* `tBodyGyro-mean()-Z`
* `tBodyGyro-std()-X`
* `tBodyGyro-std()-Y`
* `tBodyGyro-std()-Z`
* `tBodyGyroJerk-mean()-X`
* `tBodyGyroJerk-mean()-Y`
* `tBodyGyroJerk-mean()-Z`
* `tBodyGyroJerk-std()-X`
* `tBodyGyroJerk-std()-Y`
* `tBodyGyroJerk-std()-Z`
* `tBodyAccMag-mean()`
* `tBodyAccMag-std()`
* `tGravityAccMag-mean()`
* `tGravityAccMag-std()`
* `tBodyAccJerkMag-mean()`
* `tBodyAccJerkMag-std()`
* `tBodyGyroMag-mean()`
* `tBodyGyroMag-std()`
* `tBodyGyroJerkMag-mean()`
* `tBodyGyroJerkMag-std()`
* `fBodyAcc-mean()-X`
* `fBodyAcc-mean()-Y`
* `fBodyAcc-mean()-Z`
* `fBodyAcc-std()-X`
* `fBodyAcc-std()-Y`
* `fBodyAcc-std()-Z`
* `fBodyAcc-meanFreq()-X`
* `fBodyAcc-meanFreq()-Y`
* `fBodyAcc-meanFreq()-Z`
* `fBodyAccJerk-mean()-X`
* `fBodyAccJerk-mean()-Y`
* `fBodyAccJerk-mean()-Z`
* `fBodyAccJerk-std()-X`
* `fBodyAccJerk-std()-Y`
* `fBodyAccJerk-std()-Z`
* `fBodyAccJerk-meanFreq()-X`
* `fBodyAccJerk-meanFreq()-Y`
* `fBodyAccJerk-meanFreq()-Z`
* `fBodyGyro-mean()-X`
* `fBodyGyro-mean()-Y`
* `fBodyGyro-mean()-Z`
* `fBodyGyro-std()-X`
* `fBodyGyro-std()-Y`
* `fBodyGyro-std()-Z`
* `fBodyGyro-meanFreq()-X`
* `fBodyGyro-meanFreq()-Y`
* `fBodyGyro-meanFreq()-Z`
* `fBodyAccMag-mean()`
* `fBodyAccMag-std()`
* `fBodyAccMag-meanFreq()`
* `fBodyBodyAccJerkMag-mean()`
* `fBodyBodyAccJerkMag-std()`
* `fBodyBodyAccJerkMag-meanFreq()`
* `fBodyBodyGyroMag-mean()`
* `fBodyBodyGyroMag-std()`
* `fBodyBodyGyroMag-meanFreq()`
* `fBodyBodyGyroJerkMag-mean()`
* `fBodyBodyGyroJerkMag-std()`
* `fBodyBodyGyroJerkMag-meanFreq()`
* `angle(tBodyAccMean,gravity)`
* `angle(tBodyAccJerkMean),gravityMean)`
* `angle(tBodyGyroMean,gravityMean)`
* `angle(tBodyGyroJerkMean,gravityMean)`
* `angle(X,gravityMean)`
* `angle(Y,gravityMean)`
* `angle(Z,gravityMean)`
