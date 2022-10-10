Getting and Cleaning Data - Course Project
==========================================

This is the project for the "Getting and Cleaning Data" course.

## Data project
The original data represent the data collected from the accelerometers from the Samsung Galaxy S smartphone, from the UCI Machine Learning Repository - Human Activity Recognition Using Smartphones Data Set.  
Files for the data project: [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
Data description: [here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

## Files in the repository

### Script to clean the data: run_analsis.R
The R script `run_analysis.R` does the following:  

* Merges the training and the test sets to create one data set.
* Labels the data set with descriptive variable names.
* Extracts the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Creates a second independent tidy data set with the average of each variable for each activity and each subject. 

### Output file: tidy.txt
The output data is grouped by subject and activity, and shows the mean for each variable. The file is written as `tidy.txt`.

### Code book: CodeBook.md
The `CodeBook.md` has the link to get the original data, describes the data transformations and the variables of the final tidy data set.
