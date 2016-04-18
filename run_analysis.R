## Assignment: Getting and Cleaning Data Course Project
## Run Analysis


## Set working directory and load required R packages
## Note: Check that you working directory contains the required files.

setwd("~/UCI HAR Dataset")
library(plyr)

## Load features which are the variable names for the X data sets
## Note: There are 561 features.

features <- read.table("features.txt")
var_names <- as.character(features[, 2])

## Load training data set

X_train <- read.table("train/X_train.txt", col.names = var_names)
y_train <- read.table("train/y_train.txt", col.names = "activityid")
subj_train <- read.table("train/subject_train.txt", col.names = "subject")
train_data <- cbind(X_train, y_train, subj_train)


## Load testing data set

X_test <- read.table("test/X_test.txt", col.names = var_names)
y_test <- read.table("test/y_test.txt", col.names = "activityid")
subj_test <- read.table("test/subject_test.txt", col.names = "subject")
test_data <- cbind(X_test, y_test, subj_test)


## 1. Merge the training and the test sets to create one data set.

run_data <- rbind(train_data, test_data)


## 2. Extract only the measurements on the mean and standard deviation
##    for each measurement.
##    Note: Columns 562 and 563 (activity id and subject) are retained
##          in the data frame.
##          Only true "mean()" and "std()" measurements are selected. Other
##          variables that contain the strings "mean" or "std" are ignored.

var_mean_std <- grep("mean\\(\\)|std\\(\\)", var_names)
selected_run_data <- run_data[, c(562, 563, var_mean_std)]


## 3. Use descriptive activity names to name the activities in the data set
##    i.e. create new column to add given activity labels (in lower case) 
##         to activity id's using the merge() function.

al <- read.table("activity_labels.txt", 
                 col.names = c("activityid", "activity"))
al$activity <- tolower(as.character(al$activity))
selected_run_data <- merge(al, selected_run_data, by = "activityid")


## 4. Appropriately label the data set with descriptive variable names.
##    Note: Variables were already named when reading in the data sets
##          by using the features from features.txt .
##          In this step, names are tidied up by removing all special 
##          characters such as "-" and "()".

names(selected_run_data) <- gsub("[[:punct:]]","", names(selected_run_data))


## 5. From the data set in step 4, create a second, independent tidy data set
##    with the average of each variable for each activity and each subject.
##    Note: The average (mean) is only calculated for all the measured 
##          variables (columns 3 to 69). 
##          Activity id column is dropped as it is no longer required.
##          Columns are re-ordered to show subject first, then activity.

tidy_run_data <- ddply(selected_run_data, c("subject", "activity"), 
      function(x) colMeans(x[, 3:69]))
tidy_run_data <- tidy_run_data[, c(2,1,3:68)]
write.table(tidy_run_data, "tidy_run_data.txt", row.names = FALSE)