# Getting_and_Cleaning_Data

### NOTE: run_analysis.R, download_and_extract_files.R, place_data_in_frame.R and newNames.txt ARE ALL REQUIRED TO RUN THE run_analysis.R SCRIPT

This repository contains the R scripts required to generate the tidy data set 
"tidy_data_set.txt" from the original data set located in a Zip file at the URL "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". 
The tidy data set averages the mean and standard deviations of features across 
all subjects for each activity.The tidy data set and the original data also
exist within the directory along with scripts to perform the cleaning.

The following scripts perform the processing:

## run_analysis.R

run_analysis.R performs the majority of the data cleaning and requires the dplyr
and reshape2 packages. The script performs the following actions:

* Uses library to install the required packages
* Sources the functions download_and_extract_files() and place_data_in_frame() 
* Downloads and unzips the data using download_and_extract_files() (OMMIT THIS STEP IF DATA EXISTS AND IS EXTRACTED)
* Extracts the training and testing data into data frames using place_data_in_frame(). The function also converts the activities into a factor with useful activity names and applies the original names to the data frames.
* Concatenates the two data frames to create a complete list of observations
* Uses regular expressions to extract only the mean and standard deviation of each feature
* Arranges the data by subject and activity
* Melts the data with ids of subjects and activities
* Casts the data into the tidy data set using dcast

## download_and_extract_files.R

download_and_extract_files.R contains the function download_and_extract_files()
which is used to collect the data from online and place it into the appropriate directory.
The function performs the following:

* Creates a 'data' directory (if not already existing)
* Downloads the Zip file into the data directory (if it does not exist)
* Unzips the file (if it has not already been unzipped)
* Returns the date the file was downloaded (NULL is it already existed)

## place_data_in_frame.R

place_data_in_frame.R contains the function place_data_in_frame() which is used
to place the data sets into data frames. The function takes in either "train" or "test"
to determine which data to place in the table. The function performs the following:

* Places the features into data set
* Adds the original names to the features
* Extracts the activities and converts them to a factor with useful names
* Reads in the subject information and applies a useful name to the subjects
* Combines the data into one data frame and returns