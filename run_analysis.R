### GETTING AND CLEANING DATA
## COURSE PROJECT

# The following code can be run as long as the Samsung data is in the working directory

# The activities this script do:

# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## LOAD REQUIRED PACKAGES
library(plyr)

## OPEN AND LOAD THE DATA SETS

# Training data
y_train = read.table("train/y_train.txt", header = F)
s_train = read.table("train/subject_train.txt", header = F)
x_train = read.table("train/x_train.txt", header = F, sep = "", strip.white = T)

# Test data
y_test = read.table("test/y_test.txt", header = F)
s_test = read.table("test/subject_test.txt", header = F)
x_test = read.table("test/x_test.txt", header = F, sep = "", strip.white = T)

# Descriptive Names for Columns
col_lbls = read.table("features.txt", header = F, sep = " ")

# Activity Names
act_lbls = read.table("activity_labels.txt", header = F, sep = " ")


## 1. MERGE THE TRAINING AND THE TEST SETS

# Next merge the data vertically
merged_data = rbind(x_test, x_train)


## 2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT 

# set the column names
colnames(merged_data) = c(as.character(col_lbls$V2))

# Extract the array of columns that contain 'mean()' and 'std()'
columns_to_extract = c(grep("mean()", colnames(merged_data), fixed = T),
                       grep("std()", colnames(merged_data), fixed = T))

#Extract the data requiered
extracted_data = merged_data[,columns_to_extract]

# Merge subject and activity data
subjects_data = rbind(s_test, s_train)
activities_data = rbind(y_test, y_train)
colnames(subjects_data) = "Subjects"
colnames(activities_data) = "Activities"

# Complete the data set
extr_data_full = cbind(subjects_data, activities_data, extracted_data)


## 3. ADD DESCRIPTIVE ACTIVITY NAMES

# Replace Activity Id by Activity Name 
for(i in 1:nrow(extr_data_full)) {
    extr_data_full$Activities[i] <- as.character(act_lbls[extr_data_full$Activities[i],2])
}


## 4. APPROPRIATELY LABELS THE DATA SET

# Already done in the lines: 44, 56, 57


## 5. GENERATE SECOND, INDEPENDENT TIDY DATA SET

# Aggregates data set
tidy_data = ddply(extr_data_full,
                  .(Subjects, Activities),
                  function(x) sapply(x[3:68], mean)) 

# Write file
write.table(tidy_data, file = "tidy_data.txt", row.names = F)

## END OF FILE

