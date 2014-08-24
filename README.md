GETTING AND CLEANING DATA
=========================

# Course Project Assignment

This document explains how the script contained in the `run_analysis.R` file works. The code will run correctly as long as the Samsung data is in the working directory.

## Steps required in the assignment:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Description of the script:

*OPEN AND LOAD THE DATA SETS*

Using the function `read.table`, all the necesary files are opened:

```
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
```

1. *MERGE THE TRAINING AND THE TEST SETS*

Using the `rbind` funtion the data from **test** and **train** data are joined vertically.

```
merged_data = rbind(x_test, x_train)
```

2. *EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT*

In order to make an easier extraction of the necessary columns, first, the script adds the column names to the data and the required columns are extracted.

```
# set the column names
colnames(merged_data) = c(as.character(col_lbls$V2))

# Extract the array of columns that contain 'mean()' and 'std()'
columns_to_extract = c(grep("mean()", colnames(merged_data), fixed = T),
                       grep("std()", colnames(merged_data), fixed = T))

#Extract the data requiered
extracted_data = merged_data[,columns_to_extract]
```

Before add the activity names, the script joins vertically the data from the subjects (s) and activities (y) data sets.

```
subjects_data = rbind(s_test, s_train)
activities_data = rbind(y_test, y_train)
```

Then adds the corresponding column names.

```
colnames(subjects_data) = "Subjects"
colnames(activities_data) = "Activities"
```

Now, using the `cbind` function, the information is joined horizontally.

```
extr_data_full = cbind(subjects_data, activities_data, extracted_data)
```

3. *ADD DESCRIPTIVE ACTIVITY NAMES*

Iterating over the rows of the recent combined data set, the values from the *Activities* column are replaced by ther corresponding names.

```
for(i in 1:nrow(extr_data_full)) {
    extr_data_full$Activities[i] <- as.character(act_lbls[extr_data_full$Activities[i],2])
}
```

4. *APPROPRIATELY LABELS THE DATA SET*

This step was previously done (Column names in step 2).


5. *GENERATE SECOND, INDEPENDENT TIDY DATA SET*

In this step, the data is grouped (by Subject and Activity) and agregated (using the `mean` function)

```
tidy_data = ddply(extr_data_full, .(Subjects, Activities), function(x) sapply(x[3:68], mean)) 
```

At the end, the data is writen in the `tidy_data.txt` file.

```
write.table(tidy_data, file = "tidy_data.txt", row.names = F)
```
