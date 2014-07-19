# R file for cleaning the data set of the Get Data Course Project

# Make sure to set the working directory to where you want the files
# to be downloaded and unzipped

# download the zip file with the raw data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "./getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

# unzip the zip file with the raw data
unzip("./getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

# load the activity labels
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt", as.is = TRUE)

# turn the activity labels into a factor variable that has the right order (1-6)
activitylabels$V2 <- factor(activitylabels$V2, levels = activitylabels$V2)

# load the feature labels
featurelabels <- read.table("./UCI HAR Dataset/features.txt", as.is = TRUE)

# there are duplicates in the feature labels, which can be removed
# by applying make.unique()
featurelabels$V2 <- make.unique(featurelabels$V2)

# read the 3 files for the training data
trainingdataX <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = featurelabels$V2)
trainingdataY <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainingdataSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# add the activity and the subject information to the training data
trainingdataX$Activity <- trainingdataY[,1]
trainingdataX$Subject <- trainingdataSubjects[,1]

# read the 3 files for the test data
testdataX <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = featurelabels$V2)
testdataY <- read.table("./UCI HAR Dataset/test/y_test.txt")
testdataSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# add the activity and the subject information to the test data
testdataX$Activity <- testdataY[,1]
testdataX$Subject <- testdataSubjects[,1]

# combine the training and the test set into a single dataset
dataset <- rbind(trainingdataX, testdataX)

# select the columns with mean and std and also activity and subject
dataselection <- dataset[,c(grep("mean[\\(]|std[\\(]", featurelabels$V2),562, 563)]

# create descriptive activity names to name the activities in the data set
dataselection$Activity <- factor(dataselection$Activity, levels = activitylabels$V1, labels = activitylabels$V2)

# make the variable names more readable by expanding some of the abbreviations
# in the variable names and removing (, ) and - characters
names(dataselection) <- gsub("^t", "TimeDomain", names(dataselection))
names(dataselection) <- gsub("^f", "FrequencyDomain", names(dataselection))
names(dataselection) <- gsub("Acc", "Acceleration", names(dataselection))
names(dataselection) <- gsub("\\.", "", names(dataselection))
names(dataselection) <- gsub("Mag", "Magnitude", names(dataselection))
names(dataselection) <- gsub("BodyBody", "Body", names(dataselection))
names(dataselection) <- gsub("mean", "Mean", names(dataselection))
names(dataselection) <- gsub("std", "StandardDeviation", names(dataselection))

# split the dataset by activity and subject
splitteddataset <- split(dataselection[1:66], list(subject = dataselection$Subject, activity = dataselection$Activity))
# calculate the means for each of the features for each subject-activity combination
result <- sapply(splitteddataset, colMeans)

# result needs to be transposed to get the features as columns and subject-activity
# observations as rows
tidydata <- data.frame(t(result))

# Create more readable row names
rownames <- row.names(tidydata)
rownames <- gsub("(.*)", "Subject\\1", rownames)
rownames <- gsub("WALKING$", "Walking", rownames)
rownames <- gsub("WALKING_UPSTAIRS", "WalkingUpstairs", rownames)
rownames <- gsub("WALKING_DOWNSTAIRS", "WalkingDownstairs", rownames)
rownames <- gsub("SITTING", "Sitting", rownames)
rownames <- gsub("STANDING", "Standing", rownames)
rownames <- gsub("LAYING", "Laying", rownames)
rownames <- gsub("\\.", "", rownames)
row.names(tidydata) <- rownames

# save the tidy dataset to file
write.table(tidydata, "./tidydata.txt")
