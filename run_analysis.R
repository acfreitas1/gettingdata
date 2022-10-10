# run_analysis.R

# Get data ===========

# Download and unzip data files.
url_data <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url_data, destfile = "./data.zip")
unzip("data.zip")


# 1. Merge the training and the test sets to create one data set ===========

## Read test data set.
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

## Read train data set.
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Combine data for subject (subject_), activity labels (y_) set and data set (X_).
DataTest  <- cbind(subject_test, y_test, X_test)
DataTrain <- cbind(subject_train, y_train, X_train)

## Merge the test and train set.
AllData <- rbind(DataTest, DataTrain)


# 2. Label the data set with descriptive variable names ===========

# Read Activity labels and Features. 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")  

# Name the variables.
AllNames <- c("subject", "activity", as.character(features$V2))
colnames(AllData) <- c("subject", "activity", as.character(features$V2))


# 3. Extract the measurements on the mean and standard deviation for each measurement===========

# Extract the indices of the columns containing the mean and standard deviation.
MeanStdCol <- grep("subject|activity|[Mm]ean|std", AllNames, value = F)

# Select the columns from the complete data set using the indices previously extracted.
SelectedSet <- AllData[ , MeanStdCol]


# 4. Use descriptive activity names to name the activities in the data set ===========

# Convert 'subject' and 'activity' to factors.
SelectedSet$subject <- as.factor(SelectedSet$subject)

SelectedSet$activity <- factor(SelectedSet$activity, 
                           levels = activity_labels[ , 1], 
                           labels = activity_labels[ , 2])


# 5. Create a tidy data set with the average of each variable for each activity and each subject ===========

library(reshape2)
DataMelted <- melt(SelectedSet, id = c("subject", "activity"))
TidyData <- dcast(DataMelted, subject + activity ~ variable, mean)

# Write tidy table
write.table(TidyData,"tidy.txt", row.names = FALSE, quote = FALSE)
