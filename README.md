# Getting-and-Cleaning-Data-Course-Project


This course project contains the following files:
- This README file `README.md`
- The R script `run_analysis.r` that performs the analysis and creates a tidy data set
- The tidy data set `tidy_run_data.txt`
- The Codebook `CodeBook.md` that describes the data and variables of the tidy data set. 


## Source Data

The data given is from a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors. 
Further expanations of the data can be found at this link [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

In order to run the R script for this project, you first need to download the dataset from the link below, unzip it and save it to your working directory.
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The `README.txt` and `features_info.txt` of this data set give valuable background information and explanations of the data.

The files required for the analysis of the course project are:

- `features.txt` - List of all features
- `activity_labels.txt` - Links the class labels with their activity name
- `test/X_test.txt` - Test set
- `test/y_test.txt` - Test labels
- `test/subject_test.txt` - Subjects who performed the activity in the test set (range from 1 to 30)
- `train/X_train.txt` - Training set
- `train/y_train.txt` - Training labels
- `train/subject_train.txt` - Subjects who performed the activity in the training set (range from 1 to 30)

Data in the Intertial Signals folders are not required for the analysis of the course project.


## R script

The script `run_analysis.r` performs the following steps:

1. Loads the features (i.e. variables) from the original data source `features.txt`
2. Loads test and training data from the original data source (6 files total)
3. Merges the test and training data into one data set
4. Extracts columns that contain mean or standard deviation of measurements. Note that only true "mean()" and "std()" measurements are selected. Other variables that contain the strings "mean" or "std" are ignored as they don't reflect true mean or standard deviation measurements.
5. Adds descriptive names to the activities in the data set loaded from `activity_labels.txt`
6. Modifies variable names to make them descriptive, i.e. names based on the action the variable is recording. These are explained in the code book `CodeBook.md`.
7. Calculates the average of each variable for each subject and each activity using the `ddply` function from the `plyr` package.
8. Generates a tidy data text file `tidy_run_data.txt` that meets the principles of tidy data as per Hadley Wickham's paper [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
  - Each variable forms a column. Columns are ordered with fixed variables (subject and activity) first and then all measured variables.
  - Each observation forms a row. Rows are ordered by the first variable (subject) and then the second variable (activity).
  - Each type of observational unit forms a table (only one in this case).
  
The tidy data set `tidy_run_data.txt` can be read into R with
`read.table("tidy_run_data.txt", header = TRUE)`.
