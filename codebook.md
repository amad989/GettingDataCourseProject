run_analysis Codebook
========================
X_test.txt is read into Xtest
y_test.txt is read into Ytest, strings to factors false
subject_test.txt is read into Stest, strings to factors false
X_train.txt is read into Xtrain
y_train.txt is read into Ytrain, strings to factors false
subject_train.txt is read into Strain, strings to factors false

features.txt is read into feat, strings to factors false
column names of Xtest changed to values in feat[[2]]
column names of Ytest changed to values in feat[[2]]
column name of Ytest changed to Activity
column name of Ytrain changed to Activity
column nmae of Stest changed to Subject
column nmae of Strain changed to Subject
Xtest, Ytest, Stest column binded to make test
Xtrain, Ytrain, Strain column binded to make train
test and train row binded to form data

columns with names containing "mean()" stored in meanCols
columns with names containing "std()" stored in stdCols
meanCols and stdCols combined to form vector Cols

data is transformed with index Cols to contain only columns Activity, Subject, 
those indexed by Cols

activity_labels.txt is read into actLabels
values in data$Activity are replaced with corresponding values from actLabels

The dplyr library is loaded
data is grouped by Subject and Activity and result stored in groupData
The average of each variable for a given Subject and Activity is calculated and 
the resulting table is stored in tidyData