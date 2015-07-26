#Getting and Cleaning Data Course Project
July 2015

###Getting started
1. Download all the R scripts from this repository:
    * run_analysis.R
    * get_zip.R
    * select_input_type.R
    * use_freq_data.R
2. Download the zipped data file from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Ensure the zipped data is stored in the same folder as the R scripts
4. Check that the data and R scripts are in your current working directory using `dir()`
5. If needed, change your working directory to where the scripts and data are located using `setwd("path_to_files")`
6. Load the run_analysis.R script using `source("run_analysis.R")`
7. Run the script using `run_analysis()`

###When the script is running
1. You will be asked to specify the zip file where the data is saved. If you have saved the data with the standard file name, you can choose 1. Otherwise choose 2 and specify the zip file name to be used.
2. You will be asked if you want to include meanFreq() measurements from the file in the final result. Please choose "y" to include or "n" to exclude. Both versions can be found in this repository.
3. A tab delimited text file called *tidy_data_summary.txt* will be created in your working directory. This file consists of the average for all measurements by subject and activity.