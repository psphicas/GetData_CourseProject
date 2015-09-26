# GetData_CourseProject

Course Project for Getting and Cleaning Data

https://class.coursera.org/getdata-032

---

## Introduction

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

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation
for each measurement.
3. Uses descriptive activity names to name the activities in the data
set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy
data set with the average of each variable for each activity and each
subject.

---

## Instructions

1. Clone this repository, or just download [run_analysis.R](run_analysis.R)

2. From the R prompt, execute:

```{r}
source('run_analysis.R')
```

---

## Notes

### File locations

Input and output files are placed in the current working directory.
The dataset is unzipped into a temporary directory which is later deleted by the script.

**Input**

* `UCI HAR Dataset.zip` - original dataset, which will be downloaded if not present

**Output**

* `tidy.txt` - the tidy dataset
* `features_transformed.txt` - table of features in the tidy data set,
and their original feature names in the input data

### Requirements

The following R packages are required:

* [downloader](https://cran.r-project.org/package=downloader)
* [dplyr](https://cran.r-project.org/package=dplyr)

If necessary, install them as follows:

```{r}
install.packages("downloader")
install.packages("dplyr")
```

