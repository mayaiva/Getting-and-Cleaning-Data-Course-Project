# Getting and Cleaning Data Course Project" 
#Q1 Merge the training and the test sets to create one data set.

#Load and read  data

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# create "combined x" data set

x_data <- rbind(x_train, x_test)

# create "combined y" data set
y_data <- rbind(y_train, y_test)

# Merge the training and test sets to create one data set
AllInOne <- rbind(subject_train, subject_test)

# Q2 Extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("UCI HAR Dataset/features.txt")

# select means and stds
mean_and_std_only <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the "x" data
x_data <- x_data[, mean_and_std_only]

# add the column names to the "x" data set
names(x_data) <- features[mean_and_std_only, 2]

# Q3 Use descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# update values with correct activity names
y_data[, 1] <- activities[y_data[, 1], 2]

# add column names
names(y_data) <- "activity"

# Q4 Appropriately labele the data set with descriptive variable names.

# correct column name
names(AllInOne) <- "subject"

# combine all the data in a single data set
data_combined <- cbind(x_data, y_data, AllInOne)

# Q5 Creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject.

library(plyr)
avr_data <- ddply(data_combined, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(avr_data, "averages_data.txt", row.name=FALSE)

View (avr_data)

colnames(avr_data)

