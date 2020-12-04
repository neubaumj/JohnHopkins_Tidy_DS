Code Book
==========

Original and Files
==================
The original files are:

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Code Book of Details Steps in Processing the Data
==================
The data was processed using a scrip named run_analysis.R

The processing steps included:

Downloaded the data and uncompressed the zip file placed into default R directory
Read in the data (see Processing Files and Directory Structure)
Appended together Training and Test data sets
Renamed columns to the ones listed in the features.txt file and cleaned up labels
Joined the datasets (x, y and activities) into 1 data set
Saved data set to file joined.txt
Grouped data set by Activity and Subject ID
Saved data set to file summarized.txt


Processed output files
==================
Joined ".\joined.txt"
Summarized ".\summarized.txt"
