# JohnHopkins_Tidy_DS
John Hopkins Getting and Cleaning Data Final Project -- Tidy Data Set

Processing the Data
===================

The data was processed using a scrip named run_analysis.R

The processing steps included:
1. Downloaded the data and uncompressed the zip file placed into default R directory
2. Process using run_analysis.R
3. Output files generated:
  joined.txt
  summarized.txt
  

Files and Directory Structure
========================================

activity labels (space delimited)</br>
f_activity  ".\\UCI HAR Dataset\\activity_labels.txt"

column labels (space delimited)</br>
f_columns  ".\\UCI HAR Dataset\\features.txt"

test data (space delimited)</br>
f_x_test  ".\\UCI HAR Dataset\\test\\X_test.txt"</br>
f_y_test  ".\\UCI HAR Dataset\\test\\y_test.txt"</br>
f_subject_test  ".\\UCI HAR Dataset\\test\\subject_test.txt"

train data (space delimited)</br>
f_x_train  ".\\UCI HAR Dataset\\train\\X_train.txt"</br>
f_y_train  ".\\UCI HAR Dataset\\train\\y_train.txt"</br>
f_subject_train  ".\\UCI HAR Dataset\\train\\subject_train.txt"

Processed output files</br>
Joined  ".\\joined.txt"</br>
Summarized  ".\\summarized.txt"


Original and Files
==============

The original files are:

A full description is available at the site where the data was obtained:</br>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:</br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Code Book of Details Steps in Processing the Data
===================

The data was processed using a scrip named run_analysis.R

The processing steps included:
1. Downloaded the data and uncompressed the zip file placed into default R directory
2. Read in the data (see Processing Files and Directory Structure)
3. Appended together Training and Test data sets
4. Renamed columns to the ones listed in the features.txt file and cleaned up labels
5. Joined the datasets (x, y and activities) into 1 data set
6. Saved data set to file joined.txt
7. Grouped data set by Activity and Subject ID
8. Saved data set to file summarized.txt


Example joined.txt data (showing first few rows and columns)
====================
"subjectid" "activity" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z"</br>
1 "STANDING" 0.28858451 -0.020294171 -0.13290514</br>
1 "SITTING" 0.22184689 0.034107675 -0.12361242</br>
1 "LAYING" 0.27672941 -0.017209548 -0.10563797</br>
1 "WALKING" 0.28151325 -0.040800898 -0.13467496</br>
1 "WALKING" 0.28972747 0.01534272 -0.11667518</br>
1 "WALKING_UPSTAIRS" 0.18360372 -0.076558729 -0.0469561


Example summarized.txt data (showing first few rows and columns)
====================
"activity" "subjectid" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z"</br>
"LAYING" 1 0.22159824394 -0.0405139534294 -0.11320355358</br>
"SITTING" 1 0.261237565425532 -0.00130828765170213 -0.104544182255319</br>
"STANDING" 1 0.278917629056604 -0.0161375901037736 -0.110601817735849</br>
"WALKING" 1 0.277330758736842 -0.0173838185273684 -0.111148103547368</br>
"WALKING_DOWNSTAIRS" 1 0.289188320408163 -0.00991850461020408 -0.107566190908163</br>
"WALKING_UPSTAIRS" 1 0.255461689622641 -0.0239531492643396 -0.0973020020943396

 
Contributors
====================

* [Jeff N](https://github.com/neubaumj/JohnHopkins_Tidy_DS/) - Wrote the initial version.
