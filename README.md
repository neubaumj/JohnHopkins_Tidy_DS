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

activity labels (space delimited)
f_activity  ".\\UCI HAR Dataset\\activity_labels.txt"

column labels (space delimited)
f_columns  ".\\UCI HAR Dataset\\features.txt"

test data (space delimited)
f_x_test  ".\\UCI HAR Dataset\\test\\X_test.txt"
f_y_test  ".\\UCI HAR Dataset\\test\\y_test.txt"
f_subject_test  ".\\UCI HAR Dataset\\test\\subject_test.txt"

train data (space delimited)
f_x_train  ".\\UCI HAR Dataset\\train\\X_train.txt"
f_y_train  ".\\UCI HAR Dataset\\train\\y_train.txt"
f_subject_train  ".\\UCI HAR Dataset\\train\\subject_train.txt"

Processed output files
Joined  ".\\joined.txt"
Summarized  ".\\summarized.txt"


Original and Files
==============

The original files are:

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Details Steps in Processing the Data
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
"subjectid" "activity" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z"
1 "STANDING" 0.28858451 -0.020294171 -0.13290514
1 "SITTING" 0.22184689 0.034107675 -0.12361242
1 "LAYING" 0.27672941 -0.017209548 -0.10563797
1 "WALKING" 0.28151325 -0.040800898 -0.13467496
1 "WALKING" 0.28972747 0.01534272 -0.11667518
1 "WALKING_UPSTAIRS" 0.18360372 -0.076558729 -0.0469561


Example summarized.txt data (showing first few rows and columns)
====================
"activity" "subjectid" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z"
"LAYING" 1 0.22159824394 -0.0405139534294 -0.11320355358
"SITTING" 1 0.261237565425532 -0.00130828765170213 -0.104544182255319
"STANDING" 1 0.278917629056604 -0.0161375901037736 -0.110601817735849
"WALKING" 1 0.277330758736842 -0.0173838185273684 -0.111148103547368
"WALKING_DOWNSTAIRS" 1 0.289188320408163 -0.00991850461020408 -0.107566190908163
"WALKING_UPSTAIRS" 1 0.255461689622641 -0.0239531492643396 -0.0973020020943396


Processed File Variables/Columns
====================
 Processed file:  joined.txt
 [1] "subjectid"                         
 [2] "activity"                          
 [3] "tbodyacc-mean-x"                   
 [4] "tbodyacc-mean-y"                   
 [5] "tbodyacc-mean-z"                   
 [6] "tbodyacc-std-x"                    
 [7] "tbodyacc-std-y"                    
 [8] "tbodyacc-std-z"                    
 [9] "tgravityacc-mean-x"                
[10] "tgravityacc-mean-y"                
[11] "tgravityacc-mean-z"                
[12] "tgravityacc-std-x"                 
[13] "tgravityacc-std-y"                 
[14] "tgravityacc-std-z"                 
[15] "tbodyaccjerk-mean-x"               
[16] "tbodyaccjerk-mean-y"               
[17] "tbodyaccjerk-mean-z"               
[18] "tbodyaccjerk-std-x"                
[19] "tbodyaccjerk-std-y"                
[20] "tbodyaccjerk-std-z"                
[21] "tbodygyro-mean-x"                  
[22] "tbodygyro-mean-y"                  
[23] "tbodygyro-mean-z"                  
[24] "tbodygyro-std-x"                   
[25] "tbodygyro-std-y"                   
[26] "tbodygyro-std-z"                   
[27] "tbodygyrojerk-mean-x"              
[28] "tbodygyrojerk-mean-y"              
[29] "tbodygyrojerk-mean-z"              
[30] "tbodygyrojerk-std-x"               
[31] "tbodygyrojerk-std-y"               
[32] "tbodygyrojerk-std-z"               
[33] "tbodyaccmag-mean"                  
[34] "tbodyaccmag-std"                   
[35] "tgravityaccmag-mean"               
[36] "tgravityaccmag-std"                
[37] "tbodyaccjerkmag-mean"              
[38] "tbodyaccjerkmag-std"               
[39] "tbodygyromag-mean"                 
[40] "tbodygyromag-std"                  
[41] "tbodygyrojerkmag-mean"             
[42] "tbodygyrojerkmag-std"              
[43] "fbodyacc-mean-x"                   
[44] "fbodyacc-mean-y"                   
[45] "fbodyacc-mean-z"                   
[46] "fbodyacc-std-x"                    
[47] "fbodyacc-std-y"                    
[48] "fbodyacc-std-z"                    
[49] "fbodyacc-meanfreq-x"               
[50] "fbodyacc-meanfreq-y"               
[51] "fbodyacc-meanfreq-z"               
[52] "fbodyaccjerk-mean-x"               
[53] "fbodyaccjerk-mean-y"               
[54] "fbodyaccjerk-mean-z"               
[55] "fbodyaccjerk-std-x"                
[56] "fbodyaccjerk-std-y"                
[57] "fbodyaccjerk-std-z"                
[58] "fbodyaccjerk-meanfreq-x"           
[59] "fbodyaccjerk-meanfreq-y"           
[60] "fbodyaccjerk-meanfreq-z"           
[61] "fbodygyro-mean-x"                  
[62] "fbodygyro-mean-y"                  
[63] "fbodygyro-mean-z"                  
[64] "fbodygyro-std-x"                   
[65] "fbodygyro-std-y"                   
[66] "fbodygyro-std-z"                   
[67] "fbodygyro-meanfreq-x"              
[68] "fbodygyro-meanfreq-y"              
[69] "fbodygyro-meanfreq-z"              
[70] "fbodyaccmag-mean"                  
[71] "fbodyaccmag-std"                   
[72] "fbodyaccmag-meanfreq"              
[73] "fbodybodyaccjerkmag-mean"          
[74] "fbodybodyaccjerkmag-std"           
[75] "fbodybodyaccjerkmag-meanfreq"      
[76] "fbodybodygyromag-mean"             
[77] "fbodybodygyromag-std"              
[78] "fbodybodygyromag-meanfreq"         
[79] "fbodybodygyrojerkmag-mean"         
[80] "fbodybodygyrojerkmag-std"          
[81] "fbodybodygyrojerkmag-meanfreq"     
[82] "angletbodyaccmean,gravity"         
[83] "angletbodyaccjerkmean,gravitymean" 
[84] "angletbodygyromean,gravitymean"    
[85] "angletbodygyrojerkmean,gravitymean"
[86] "anglex,gravitymean"                
[87] "angley,gravitymean"                
[88] "anglez,gravitymean" 

Processed file:  summarized.txt
Data is the Mean() of all these columns
 [1] "activity"                          
 [2] "subjectid"                         
 [3] "tbodyacc-mean-x"                   
 [4] "tbodyacc-mean-y"                   
 [5] "tbodyacc-mean-z"                   
 [6] "tbodyacc-std-x"                    
 [7] "tbodyacc-std-y"                    
 [8] "tbodyacc-std-z"                    
 [9] "tgravityacc-mean-x"                
[10] "tgravityacc-mean-y"                
[11] "tgravityacc-mean-z"                
[12] "tgravityacc-std-x"                 
[13] "tgravityacc-std-y"                 
[14] "tgravityacc-std-z"                 
[15] "tbodyaccjerk-mean-x"               
[16] "tbodyaccjerk-mean-y"               
[17] "tbodyaccjerk-mean-z"               
[18] "tbodyaccjerk-std-x"                
[19] "tbodyaccjerk-std-y"                
[20] "tbodyaccjerk-std-z"                
[21] "tbodygyro-mean-x"                  
[22] "tbodygyro-mean-y"                  
[23] "tbodygyro-mean-z"                  
[24] "tbodygyro-std-x"                   
[25] "tbodygyro-std-y"                   
[26] "tbodygyro-std-z"                   
[27] "tbodygyrojerk-mean-x"              
[28] "tbodygyrojerk-mean-y"              
[29] "tbodygyrojerk-mean-z"              
[30] "tbodygyrojerk-std-x"               
[31] "tbodygyrojerk-std-y"               
[32] "tbodygyrojerk-std-z"               
[33] "tbodyaccmag-mean"                  
[34] "tbodyaccmag-std"                   
[35] "tgravityaccmag-mean"               
[36] "tgravityaccmag-std"                
[37] "tbodyaccjerkmag-mean"              
[38] "tbodyaccjerkmag-std"               
[39] "tbodygyromag-mean"                 
[40] "tbodygyromag-std"                  
[41] "tbodygyrojerkmag-mean"             
[42] "tbodygyrojerkmag-std"              
[43] "fbodyacc-mean-x"                   
[44] "fbodyacc-mean-y"                   
[45] "fbodyacc-mean-z"                   
[46] "fbodyacc-std-x"                    
[47] "fbodyacc-std-y"                    
[48] "fbodyacc-std-z"                    
[49] "fbodyacc-meanfreq-x"               
[50] "fbodyacc-meanfreq-y"               
[51] "fbodyacc-meanfreq-z"               
[52] "fbodyaccjerk-mean-x"               
[53] "fbodyaccjerk-mean-y"               
[54] "fbodyaccjerk-mean-z"               
[55] "fbodyaccjerk-std-x"                
[56] "fbodyaccjerk-std-y"                
[57] "fbodyaccjerk-std-z"                
[58] "fbodyaccjerk-meanfreq-x"           
[59] "fbodyaccjerk-meanfreq-y"           
[60] "fbodyaccjerk-meanfreq-z"           
[61] "fbodygyro-mean-x"                  
[62] "fbodygyro-mean-y"                  
[63] "fbodygyro-mean-z"                  
[64] "fbodygyro-std-x"                   
[65] "fbodygyro-std-y"                   
[66] "fbodygyro-std-z"                   
[67] "fbodygyro-meanfreq-x"              
[68] "fbodygyro-meanfreq-y"              
[69] "fbodygyro-meanfreq-z"              
[70] "fbodyaccmag-mean"                  
[71] "fbodyaccmag-std"                   
[72] "fbodyaccmag-meanfreq"              
[73] "fbodybodyaccjerkmag-mean"          
[74] "fbodybodyaccjerkmag-std"           
[75] "fbodybodyaccjerkmag-meanfreq"      
[76] "fbodybodygyromag-mean"             
[77] "fbodybodygyromag-std"              
[78] "fbodybodygyromag-meanfreq"         
[79] "fbodybodygyrojerkmag-mean"         
[80] "fbodybodygyrojerkmag-std"          
[81] "fbodybodygyrojerkmag-meanfreq"     
[82] "angletbodyaccmean,gravity"         
[83] "angletbodyaccjerkmean,gravitymean" 
[84] "angletbodygyromean,gravitymean"    
[85] "angletbodygyrojerkmean,gravitymean"
[86] "anglex,gravitymean"                
[87] "angley,gravitymean"                
[88] "anglez,gravitymean"         
 
 
Contributors
====================

* [Jeff N](https://github.com/neubaumj/JohnHopkins_Tidy_DS/) - Wrote the initial version.
