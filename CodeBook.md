# Code Book
This code book describes source, variables & transformations of the data 

##Original Data
The data set used in these scripts is the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository. Details about the original data can be found on: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
   
**Link to download the data directly**
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Script output file *tidy_data_summary.txt*
When the user runs the script `run_analysis.R` located in this repository, he/she will be prompted to choose whether or not to include the meanFreq() measurements in the output data. Depending on this choice the data will have either 68 or 81 columns. Additionally the average measurement is calculated for each subject, activity. Therefore, the resulting data set has 30 *Subjects* * 6 *Activities* = 180 rows (excluding the header).

###Identifiers
1. **Subject**
   The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each row identifies the subject who performed the activity. Its range is from 1 to 30
2. **Activity**
Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist:
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING

###Measurements
Measurement Types:
* Mean - Mean value
* StdDev - Standard Deviation
* MeanFrequency - Weighted average of the frequency components

More details on these measurements can be found in the `features_info.txt` file from the original data set.

**Column Name** | Col# incl meanFreq() | Col# excl meanFreq()
-------- | -------- | -------- | ---------
**TimeBodyAcc Mean-X** | 3 | 3
**TimeBodyAcc Mean-Y** | 4 | 4
**TimeBodyAcc Mean-Z** | 5 | 5
**TimeBodyAcc StdDev-X** | 6 | 6
**TimeBodyAcc StdDev-Y** | 7 | 7
**TimeBodyAcc StdDev-Z** | 8 | 8
**TimeGravityAcc Mean-X** | 9 | 9
**TimeGravityAcc Mean-Y** | 10 | 10
**TimeGravityAcc Mean-Z** | 11 | 11
**TimeGravityAcc StdDev-X** | 12 | 12
**TimeGravityAcc StdDev-Y** | 13 | 13
**TimeGravityAcc StdDev-Z** | 14 | 14
**TimeBodyAccJerk Mean-X** | 15 | 15
**TimeBodyAccJerk Mean-Y** | 16 | 16
**TimeBodyAccJerk Mean-Z** | 17 | 17
**TimeBodyAccJerk StdDev-X** | 18 | 18
**TimeBodyAccJerk StdDev-Y** | 19 | 19
**TimeBodyAccJerk StdDev-Z** | 20 | 20
**TimeBodyGyro Mean-X** | 21 | 21
**TimeBodyGyro Mean-Y** | 22 | 22
**TimeBodyGyro Mean-Z** | 23 | 23
**TimeBodyGyro StdDev-X** | 24 | 24
**TimeBodyGyro StdDev-Y** | 25 | 25
**TimeBodyGyro StdDev-Z** | 26 | 26
**TimeBodyGyroJerk Mean-X** | 27 | 27
**TimeBodyGyroJerk Mean-Y** | 28 | 28
**TimeBodyGyroJerk Mean-Z** | 29 | 29
**TimeBodyGyroJerk StdDev-X** | 30 | 30
**TimeBodyGyroJerk StdDev-Y** | 31 | 31
**TimeBodyGyroJerk StdDev-Z** | 32 | 32
**TimeBodyAccMag Mean** | 33 | 33
**TimeBodyAccMag StdDev** | 34 | 34
**TimeGravityAccMag Mean** | 35 | 35
**TimeGravityAccMag StdDev** | 36 | 36
**TimeBodyAccJerkMag Mean** | 37 | 37
**TimeBodyAccJerkMag StdDev** | 38 | 38
**TimeBodyGyroMag Mean** | 39 | 39
**TimeBodyGyroMag StdDev** | 40 | 40
**TimeBodyGyroJerkMag Mean** | 41 | 41
**TimeBodyGyroJerkMag StdDev** | 42 | 42
**FrequencyBodyAcc Mean-X** | 43 | 43
**FrequencyBodyAcc Mean-Y** | 44 | 44
**FrequencyBodyAcc Mean-Z** | 45 | 45
**FrequencyBodyAcc StdDev-X** | 46 | 46
**FrequencyBodyAcc StdDev-Y** | 47 | 47
**FrequencyBodyAcc StdDev-Z** | 48 | 48
**FrequencyBodyAcc MeanFrequency-X** | 49 | not included
**FrequencyBodyAcc MeanFrequency-Y** | 50 | not included
**FrequencyBodyAcc MeanFrequency-Z** | 51 | not included
**FrequencyBodyAccJerk Mean-X** | 52 | 49
**FrequencyBodyAccJerk Mean-Y** | 53 | 50
**FrequencyBodyAccJerk Mean-Z** | 54 | 51
**FrequencyBodyAccJerk StdDev-X** | 55 | 52
**FrequencyBodyAccJerk StdDev-Y** | 56 | 53
**FrequencyBodyAccJerk StdDev-Z** | 57 | 54
**FrequencyBodyAccJerk MeanFrequency-X** | 58 | not included
**FrequencyBodyAccJerk MeanFrequency-Y** | 59 | not included
**FrequencyBodyAccJerk MeanFrequency-Z** | 60 | not included
**FrequencyBodyGyro Mean-X** | 61 | 55
**FrequencyBodyGyro Mean-Y** | 62 | 56
**FrequencyBodyGyro Mean-Z** | 63 | 57
**FrequencyBodyGyro StdDev-X** | 64 | 58
**FrequencyBodyGyro StdDev-Y** | 65 | 59
**FrequencyBodyGyro StdDev-Z** | 66 | 60
**FrequencyBodyGyro MeanFrequency-X** | 67 | not included
**FrequencyBodyGyro MeanFrequency-Y** | 68 | not included
**FrequencyBodyGyro MeanFrequency-Z** | 69 | not included
**FrequencyBodyAccMag Mean** | 70 | 61
**FrequencyBodyAccMag StdDev** | 71 | 62
**FrequencyBodyAccMag MeanFrequency** | 72 | not included
**FrequencyBodyBodyAccJerkMag Mean** | 73 | 63
**FrequencyBodyBodyAccJerkMag StdDev** | 74 | 64
**FrequencyBodyBodyAccJerkMag MeanFrequency** | 75 | not included
**FrequencyBodyBodyGyroMag Mean** | 76 | 65
**FrequencyBodyBodyGyroMag StdDev** | 77 | 66
**FrequencyBodyBodyGyroMag MeanFrequency** | 78 | not included
**FrequencyBodyBodyGyroJerkMag Mean** | 79 | 67
**FrequencyBodyBodyGyroJerkMag StdDev** | 80 | 68
**FrequencyBodyBodyGyroJerkMag MeanFrequency** | 81 | not included


###Transformations
Description of all modifications to the original data set to create `tidy_data_summary.txt`

1. The data set has been filtered to only include measurements of
    * mean()
    * std()
    * meanFreq() - *optional, depends on user choice during script execution*
2. Data from *train* and *test* folders were combined into one large data set
3. Activity was described with a number from 1 to 6 in original data set. These numbers have been replaced with their equivalent descriptions as found in the `activity_labels.txt` file of the original data set.
4. Appropriate column names have been added in a header. The measurement names originate from the `features.txt` file in the original data. Mostly for esthetic reasons the measurement names have been changed in the following way:
    * -mean() *`was_replaced_by`* Mean
    * -std() *`was_replaced_by`* StdDev
    * -meanFreq() *`was_replaced_by`* MeanFrequency
    * Prefix 't' *`was_replaced_by`* Time
    * Prefix 'f' *`was_replaced_by`* Frequency
5. The average value of each measurement was calculated by subject, activity reducing the data to a summarized version of 180 rows.
