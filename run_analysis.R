library(plyr)
library(reshape2)
# It is assumed that the directory "UCI HAR Dataset" is 
# unzipped into the R working directory.

# 1. Read file "activity_labels.txt" into a variable "activity"
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

# 2. Edit activity names to remove subscript and convert them to lower case
activity$V2 <- gsub("_", "", tolower(activity$V2))

# 3. Read the files with activity codes from both the test and train set.
testactivity <- read.table("./UCI HAR Dataset/test/Y_test.txt")
trainactivity <- read.table("./UCI HAR Dataset/train/Y_train.txt")

# 4. Replace the numbers in Y_test.txt and Y_train.txt files with 
# the corresponding activity names.
activitycodes <- as.list(activity$V1)
activitynames <- as.list(activity$V2)
for(i in activitycodes) {
  testactivity$V1 = gsub(i, activitynames[i], testactivity$V1)
  trainactivity$V1 = gsub(i, activitynames[i], trainactivity$V1)
}

# 5. Read data from the subject_test.txt file and subject_train.txt file
# and change column name to "subject".
test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(test) <- c("subject")
names(train) <- c("subject")

# 6. Add a new column, "activity", to both "test" and "train" sets and
# populate it with the corresponding activity names from testact and trainact.
test$activity <- testactivity$V1
train$activity <- trainactivity$V1

# 7. Read the files with the measurements from the test and train sets
# and the feature list.
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

# 8. Replace variable names in xtest and xtrain with feature names
names(xtest) <- as.character(features$V2)
names(xtrain) <- as.character(features$V2)

# 9. Create logical vector "select" to get the features that contain the words
# mean or std in their names to get only those measurements 
# for which both mean and std were recorded.
select <- grepl("mean\\(\\)|std\\(\\)", features$V2)

# 10. Add the mean and std variables to the test and train sets with cbind().
for(i in 1:nrow(features)) {
  if(select[i]) {
    test <- cbind(test, xtest[i])
    train <- cbind(train, xtrain[i])
  }
}

# 11. Merge the test and train sets into a single set, called mergedSets.
mergedSets = merge(test,train, all=TRUE)

# 12. Edit variable names in the merged set to make them conform to the
# data tidying rules
names <- names(mergedSets)
names <- gsub("^t", "time", names)
names <- gsub("^f", "frequency", names)
names(mergedSets) <- gsub("-|,|\\(|\\)", "", tolower(names))

# 13. Reshape the data frame, name the result "molten"
molten <- melt(mergedSets, id=c("subject", "activity"))

# 14. Obtain averages per subject/activity. The result is an array.
averaged <- acast(molten, subject ~ activity ~ variable, mean)

# 15. Convert the array to dataframe and edit column labels
tidydata <- adply(averaged, 1:2, expand=TRUE)
names(tidydata)[1:2] <- c("subject", "activity")

# 16. Save tidydata in a tab-delimited text file named tidydata.txt
write.table(tidydata, "./tidydata.txt", sep="\t")