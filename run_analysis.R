# run_analysis.R
#
# Author: Phil Sphicas
#
# 0. Downloads (if necessary) and extracts UCI HAR Dataset.zip
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy
#    data set with the average of each variable for each activity and each
#    subject.

#####################################################################
# 0. Downloads (if necessary) and extracts UCI HAR Dataset.zip
#    to temporary working directory.
#####################################################################

library(downloader)

data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file <- basename(URLdecode(data_url))

# only download if zip isn't present
if (!file.exists(zip_file)) {
        download(data_url, zip_file, mode = "wb")
}

# always extract a fresh copy of the data from the zip file
work_dir <- tempfile()
unzip(zip_file, exdir = work_dir, junkpaths = TRUE)

#####################################################################
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# (not exactly in that order)
#####################################################################

# determine which features we want to keep (i.e. mean() and std())
# note that we are *not* keeping features like:
# meanFreq() angle(tBodyAccMean,gravity) angle(Z,gravityMean)
feature_names <- read.table(file.path(work_dir, "features.txt"))[[2]]
desired <- grep("mean\\(\\)|std\\(\\)", feature_names)

# by setting the column class to NULL when reading the data frame,
# we can skip the features we don't want
x.colclasses <- rep("NULL", length(feature_names))
x.colclasses[desired] <- "numeric"

# we can clean up the names at the same time
x.colnames <- gsub("^t", "time", feature_names)
x.colnames <- gsub("^f", "frequency", x.colnames)
x.colnames <- gsub("Gyro", "Gyroscope", x.colnames)
x.colnames <- gsub("Acc", "Accelerometer", x.colnames)
x.colnames <- gsub("Mag", "Magnitude", x.colnames)
x.colnames <- gsub("BodyBody", "Body", x.colnames)
x.colnames <- gsub("-", "_", x.colnames)
x.colnames <- gsub("mean()", "Mean", x.colnames, fixed = TRUE)
x.colnames <- gsub("std()", "StandardDeviation", x.colnames, fixed = TRUE)

# spit out the old and new feature names (for the ones we are keeping)
writeLines(paste(x.colnames, feature_names, sep = "\t")[desired],
           "features_transformed.txt")

# now we can read the sensor (X) data
x_train <- file.path(work_dir, "X_train.txt")
x_test <- file.path(work_dir, "X_test.txt")

df.x <- rbind(read.table(x_train, colClasses = x.colclasses, col.names = x.colnames),
              read.table(x_test, colClasses = x.colclasses, col.names = x.colnames))

# read the label (Y) data
y_train <- file.path(work_dir, "Y_train.txt")
y_test <- file.path(work_dir, "Y_test.txt")
df.y <- rbind(read.table(y_train), read.table(y_test))
names(df.y) <- "activity"

# the y data is numeric, but we want descriptive factor variables
activity_labels <- read.table(file.path(work_dir, "activity_labels.txt"))[[2]]
df.y$activity <- activity_labels[df.y$activity]

# subject data .. can keep as-is
subject_train <- file.path(work_dir, "subject_train.txt")
subject_test <- file.path(work_dir, "subject_test.txt")
df.subject <- rbind(read.table(subject_train), read.table(subject_test))
names(df.subject) <- "subject"

# create the combined data frame
df <- cbind(df.x, df.y, df.subject)

# perform some cleanup of the environment and the filesystem
rm(df.x, df.y, df.subject)
unlink(work_dir, recursive = TRUE)

#####################################################################
# Creates a second, independent tidy data set with the average of
# each variable for each activity and each subject.
#####################################################################
library(dplyr)

tidy <- df %>%
        group_by(activity, subject) %>%
        summarise_each(funs(mean))

write.table(tidy, file = "tidy.txt", row.names = FALSE)
