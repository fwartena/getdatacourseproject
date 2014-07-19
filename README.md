Getting and Cleaning Data Course Project
========================================

The documents and R code in this repository represent the required materials for the Getting and Cleaning Data course project on Coursera.  

The files in this repository are:  
 -   README.md: the file you are currently reading  
 -   CodeBook.md: document that describes the variables, the data, and any transformations that I performed to clean up the data  
 -   run_analysis.R: the R code to create the tidy data set as laid out in the course project assignment from the original raw data set.  


The original raw data is from the experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

This work was carried out by and presented at:  

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

More information about the data set can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

To run the R code from run_analysis.R please copy it to a local directory on your computer and open it in R. Make sure to then set the working directory for R to the directory of this file. When you run the file it will automatically download and unzip the raw data set. If you already have the raw data set unzipped in this directory you can skip these first steps.  

In CodeBook.md you will find information about the variables and the observations.  

Steps in the run_analysis.R code
--------------------------------

These are the key steps in the run_analysis.R code:  
1.  Download the zip file with the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and store it in the working directory (make sure the working directory in R is set to the location of the run_analysis.R file).  
2.  Unzip the zip file with the raw data in the working directory.  
3.  Load the activity labels from the file "/UCI HAR Dataset/activity_labels.txt" and make them more readable by using CamelCase (using an upper case letter for each word in the activity name)  
4.  Turn the activity labels into a factor variable that has the right order so they can later be used to create descriptive activity names for the data set.  
5.  Load the feature labels from the file "/UCI HAR Dataset/features.txt"  
6.  Remove the duplicates in the feature labels, by applying make.unique.  
7.  Read the 3 files for the training data and set for the X data the column names to the feature labels:  
     -  "/UCI HAR Dataset/train/X_train.txt"  
     -  "/UCI HAR Dataset/train/y_train.txt"  
     -  "/UCI HAR Dataset/train/subject_train.txt"  
8.  Add the activity and the subject information to the training data  
9.  Read the 3 files for the test data and set for the X data the column names to the feature labels:  
     -  "/UCI HAR Dataset/test/X_test.txt"  
     -  "/UCI HAR Dataset/test/y_test.txt"  
     -  "/UCI HAR Dataset/test/subject_test.txt"  
10. Add the activity and the subject information to the test data.  
11. Combine the training and the test set into a single dataset.  
12. Select the columns with "mean()" and "std()" and also include activity and subject, this results in 68 columns in total. I didn't include the variables with meanFreq in the name and also not the angle variables that include mean in the name as I don't believe they were intended in the assignment.  
13. Create descriptive activity names to name the activities in the data set by mapping the activity labels on the activities in the data set.  
14. Create descriptive variable names from the feature labels (which are not really very readable). I've chosen to use CamelCaps (using an upper case letter for each word in the feature name) in order to keep the feature names readable.  
15. Split the dataset by subject and activity, which creates 180 sets of subject (30) and activity (6) combinations.  
16. Calculate the average for each of the selected features for each  subject-activity combination, this results in a data set of 180 columns (one for each subject-activity combination) and 66 rows (66 mean and std features).  
17. To create a tidy data set where each row is one observation (which I interpret as a subject-activity combination), the result needs to be transposed to switch rows and columns. I've also transformed the resulting data set into a data.frame.  
18. Add the Subject and Activity columns in the tidy data set by taking them from the row names that were created by splitting and sapply. After the Subject and Activity columns have been add the row names can be deleted.  
19. Write the tidy data set to file by using write.table.  

The tidy data set, which has been uploaded as part of the course project submission can be loaded into R using the following command:  

```
read.table("./tidydata.txt")
```

