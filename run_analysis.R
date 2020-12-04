# ==========================================================================
# Script: run_analysis.R
#
# John Hopkins Getting and Cleaning Data Project
#
# You should create one R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for
#    each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
#
# Steps
# .\\UCI HAR Dataset\\test
# .\\UCI HAR Dataset\\train
# Read in the Test Data
#    X_test.txt
#    Y_test.txt
#    subject_test.txt
# Read in the Trainging Data
#    X_test.txt
#    Y_test.txt
#    subject_test.txt
# Merge DF
# Keep Activity, Subject, Mean & Std columns
# update Activity Names
# Create table()
# Create Mean() for each variable and each subject
# ==========================================================================

# ================== libaray ==========================================
# library
library(tidyverse)
library(data.table)
library(dplyr)

# ================== some functions ==========================================
# ================================================
# function add_rowid (df)
# Adds a new column named rowid created from a seq
# ================================================
add_rowid <- function(df) {
  return(cbind(rowid=seq_len(nrow(df)), df))
}

# ================================================
# function update_columns_byname(x_df, inlabels)
# Updates column labels
#   x_df in DF
#   inlabels: list of new labels
# ================================================
update_columns_byname <- function(x_df, columns_df) {
for (icnt in seq(1,nrow(columns_df))){
  old_cname <- paste0("V",icnt)
  new_cname <- filter(columns_df, V1==icnt)
  cexists_idx <- which(colnames(x_df) == old_cname)
  if (cexists_idx){
    names(x_df)[cexists_idx] <- new_cname$V2
  }
  icnt <- icnt + 1
}
return(x_df)
}

# ================================================
# function update_xcolumns(x_df, inlabels)
# Updates column labels
#   x_df in DF
#   inlabels: list of new labels
# Just does a 1-to-1 update
# ================================================
update_xcolumns <- function(x_df, columns_df) {
  for (icnt in seq(1, nrow(columns_df))){
    old_cname <- colnames(x_df)[icnt]
    new_cname <- columns_df[icnt,2]
    names(x_df)[icnt] <- new_cname
  }
  return(x_df)
}

# ================== some functions ==========================================

# ================== file names ==========================================
# activity labels (space delimited)
f_activity <- ".\\UCI HAR Dataset\\activity_labels.txt"

# column labels (space delimited)
f_columns <- ".\\UCI HAR Dataset\\features.txt"

# test (space delimited)
f_x_test <- ".\\UCI HAR Dataset\\test\\X_test.txt"
f_y_test <- ".\\UCI HAR Dataset\\test\\y_test.txt"
f_subject_test <- ".\\UCI HAR Dataset\\test\\subject_test.txt"

# train (space delimited)
f_x_train <- ".\\UCI HAR Dataset\\train\\X_train.txt"
f_y_train <- ".\\UCI HAR Dataset\\train\\y_train.txt"
f_subject_train <- ".\\UCI HAR Dataset\\train\\subject_train.txt"

# ================== read file data ==========================================
# read columns (features)
columns_df <- read.table(f_columns, sep = "" , header = F,
                         na.strings ="", stringsAsFactors= F)
# read activity
activity_df <- read.table(f_activity, sep = "" , header = F,
                   na.strings ="", stringsAsFactors= F)
# read train
subject_train_df <- read.table(f_subject_train, sep = "" , header = F,
                              na.strings ="", stringsAsFactors= F)
x_train_df <- read.table(f_x_train, sep = "" , header = F,
                        na.strings ="", stringsAsFactors= F)
y_train_df <- read.table(f_y_train, sep = "" , header = F,
                        na.strings ="", stringsAsFactors= F)

# read test
subject_test_df <- read.table(f_subject_test, sep = "" , header = F,
                              na.strings ="", stringsAsFactors= F)
x_test_df <- read.table(f_x_test, sep = "" , header = F,
                        na.strings ="", stringsAsFactors= F)
y_test_df <- read.table(f_y_test, sep = "" , header = F,
                        na.strings ="", stringsAsFactors= F)

# ================== merge data ==============================================
subject_df <- rbind(subject_train_df, subject_test_df)
x_df <- rbind(x_train_df, x_test_df)
y_df <- rbind(y_train_df, y_test_df)

# ================== remove old data =========================================
rm(subject_train_df)
rm(subject_test_df)
rm(x_train_df)
rm(x_test_df)
rm(y_train_df)
rm(y_test_df)

# ================== rename columns ==========================================
# rename columns
names(activity_df)[names(activity_df) == "V1"] <- "activityid"
names(activity_df)[names(activity_df) == "V2"] <- "activity"

# rename columns
names(subject_df)[names(subject_df) == "V1"] <- "subjectid"
x_df <- update_xcolumns(x_df, columns_df)

# add rowid used for joining all data
subject_df <- add_rowid(subject_df)
x_df <- add_rowid(x_df)
y_df <- add_rowid(y_df)

# clean up column names
names(x_df) <- tolower(names(x_df))
names(x_df) <- gsub("\\(", "", names(x_df))
names(x_df) <- gsub("\\)", "", names(x_df))
names(y_df) <- tolower(names(y_df))
names(y_df) <- gsub("\\(", "", names(y_df))
names(y_df) <- gsub("\\)", "", names(y_df))
names(subject_df) <- tolower(names(subject_df))
names(subject_df) <- gsub("\\(", "", names(subject_df))
names(subject_df) <- gsub("\\)", "", names(subject_df))

# ================== join data frames ========================================
# join y and activity
joined_df <- merge(y_df, activity_df, by.x="v1", by.y="activityid")
# drop column V1 (duplicate as this is activityid)
joined_df <- subset(joined_df, select=-c(v1))
# join x and y_test 
joined_df <- merge(joined_df, x_df, by.x="rowid", by.y="rowid")
# join x and subject
joined_df <- merge(subject_df, joined_df, by.x="rowid", by.y="rowid")

# ================== "select" specific columns ===============================
# select the columns to keep (rowid, subjectid, activity, mean & std)
z <- colnames(joined_df)
z1<- colnames(select(joined_df, grep('subjectid|activity|mean|std', z, ignore.case=TRUE)))
joined_df <- joined_df %>% select(z1)
write.table(joined_df, file="joined.txt", row.name=FALSE)
write.table(head(joined_df[seq(1,nrow(joined_df), 30),1:5]), file="joined_head.txt", row.name=FALSE)

# ================== create average of values ===============================
# compute the average of each variable, group by activity and subject
summarized_df <- joined_df %>% 
  group_by(activity, subjectid) %>% 
  summarise_all(mean)
write.table(summarized_df, file="summarized.txt", row.name=FALSE)
write.table(head(summarized_df[seq(1,nrow(summarized_df), 30),1:5]), file="summarized_head.txt", row.name=FALSE)

# end of script =============================================================
