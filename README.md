
# Project Getting and Cleaning Data

## Input data

Data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Used files:

    subject file: "train/subject_train.txt" and  "test/subject_test.txt" 
    data file:  "train/X_train.txt" and  "test/X_test.txt"
    labels file = "features.txt"
    activilty variable  = "train/y_train.txt" and "test/y_test.txt"
    activilty label file = "activity_labels.txt"






Summary of variables 
    
    codeBook.md 

Script 
            
    run_analysis.R

Version R 
                        
    R-3.4.2

Used librarys 
    
    library(dplyr)            
    library(data.table)
            

## Basic steps
0. Download archive and read file
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with 
6. Save results in txt

## Output file
tidy data -  df_tidy_agr_mean.txt 

