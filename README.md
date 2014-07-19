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

In CodeBook.md you will find all the information about the steps that are executed in the run_analysis.R file and the coding of the variables.  
