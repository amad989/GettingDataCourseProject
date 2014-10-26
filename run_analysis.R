#Script to analyze Human Activity Recognition Using Smartphones Data Set

#Download the data files
Xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest<-read.table("./UCI HAR Dataset/test/y_test.txt",stringsAsFactors=FALSE)
Stest<-read.table("./UCI HAR Dataset/test/subject_test.txt",stringsAsFactors=FALSE)

Xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt",stringsAsFactors=FALSE)
Strain<-read.table("./UCI HAR Dataset/train/subject_train.txt",stringsAsFactors=FALSE)

#Combine tables to form Test and Train data sets
feat<-read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
names(Xtest)<-feat[[2]]
names(Xtrain)<-feat[[2]]
names(Ytest)<-"Activity"
names(Ytrain)<-"Activity"
names(Stest)<-"Subject"
names(Strain)<-"Subject"
test<-cbind(Stest,Ytest,Xtest)
train<-cbind(Strain,Ytrain,Xtrain)

#Combine into one data table
data<-rbind(test,train)

#Find columns with mean() or std() data 
meanCols<- grep("mean()",names(data))
stdCols<- grep("std()",names(data))
Cols<-c(meanCols,stdCols)

#New data table with only values of interest
data<-data[,c(1,2,Cols)]

#Convert Acitvity Number to Descriptive Activity Label
actLabels<-read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
for (i in 1:length(data$Activity)){
        data$Activity[i]<-actLabels[data$Activity[i],2]
}

#data is now the fully labelled data set
#Make new data set, tidyData with the average of each variable for each activity and each subject
library(dplyr)
groupData<-group_by(data,Subject,Activity)
tidyData<-summarise_each(groupData,funs(mean))

