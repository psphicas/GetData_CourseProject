# GetData_CourseProject
Course Project for Getting and Cleaning Data

https://class.coursera.org/getdata-032

One of the most exciting areas in all of data science right now is
wearable computing. Companies like Fitbit, Nike, and Jawbone Up are
racing to develop the most advanced algorithms to attract new users.

The data below are collected from the accelerometers from the Samsung
Galaxy S smartphone. A full description is available at the site where
the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script run_analysis.R does the following:

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation
for each measurement.
3. Uses descriptive activity names to name the activities in the data
set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy
data set with the average of each variable for each activity and each
subject.

## Requirements
The following R packages are required:

downloader
dplyr

## Instructions
Just execute run_analysis.R

Input files (in current working directory):
UCI HAR Dataset.zip
        will be downloaded if not present

Temporary files (created in system temp directory using tempfile()):
extracted contents of UCI HAR Dataset.zip

Output files:
tidy.txt
        the tidy dataset
feature_map.txt
        list of features in the tidy data set and their original features

The 