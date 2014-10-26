GettingDataCourseProject
========================

Course project for the Getting and Cleaning Data Coursera course

The accompanying run_analysis.R script loads the Samsung data stored in the working 
directory and manipulates it into a tidy data set summarizing the mean and std data 
for each subject and activity.

#Download the data files
read.table is used to read in the test and train data, activities, and subjects

#Combine tables to form Test and Train data sets
read.table is used to read in the features file which contains the variable labels
The columns of the test and train data are renames using the feature names
The name of the data in the Y files is changed to Activity
The name of the data in the S files is changed to Subject
A single test data set is created by column binding the subject data, activity data,
	and data values
A single train data set is created by column binding the subject data, activity data,
	and data values	
	
#Combine into one data table
The test and train data set are combined using row binding to form one complete data
set called data

#Find columns with mean() or std() data
grep is used to find the columns with mean or std data
The columns are stored in a vector called Cols

#New data table with only values of interest
Only the columns in data from Cols remain, and the others are removed

#Convert Acitvity Number to Descriptive Activity Label
The Activity column has numbers, which need to be converted to corresponding
descriptive labels
read.table is used to read in the descriptive activity labels
A for loop is used to look through each value in the activity column	
	The value is used as the index to look at in the vector of descriptive labels
	The value is changed to the corresponding descriptive label

#data is now the fully labelled data set
#Make new data set, tidyData with the average of each variable for each activity and each subject
The dplyr library is loaded
The data is grouped by Subject and Activity
summarise_each is used to find the mean of each variable for a given Subject and Activity

This results in the desired tidy data set called tidyData