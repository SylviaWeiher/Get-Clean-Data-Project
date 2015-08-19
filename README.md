# Get-Clean-Data-Project
## Solution of Coursera "Getting and Cleaning Data" Course Project

The programm run_analysis.R creates a tidy dataset out of data collected from the accelerometers from the Samsung Galaxy S smartphone.

First the necessary data is uploaded to R

* dataset "Features" holds the variable names
* datasets "[...]_train" are holding training date from the experiments (six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by 30 volunteers wearing a smartphone (Samsung Galaxy S II) on the waist.)
* datasets "[...]_tests" are holding test date from the experiments

in the following the different tasks

> "You should create one R script called run_analysis.R that does the following.

>* Merges the training and the test sets to create one data set.
>* Extracts only the measurements on the mean and standard deviation for each measurement.
>* Uses descriptive activity names to name the activities in the data set
>* Appropriately labels the data set with descriptive variable names.
>* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.were performed."

are performed.

The result is a file extract with the final tidy dataset.

run_analysis.R can be run as long as the Samsung data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) is in your working directory.
