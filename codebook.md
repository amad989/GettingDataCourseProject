run_analysis Codebook
========================
<p>X_test.txt is read into Xtest
<p>y_test.txt is read into Ytest, strings to factors false
<p>subject_test.txt is read into Stest, strings to factors false
<p>X_train.txt is read into Xtrain
<p>y_train.txt is read into Ytrain, strings to factors false
<p>subject_train.txt is read into Strain, strings to factors false

<p>features.txt is read into feat, strings to factors false
<p>column names of Xtest changed to values in feat[[2]]
<p>column names of Ytest changed to values in feat[[2]]
<p>column name of Ytest changed to Activity
<p>column name of Ytrain changed to Activity
<p>column nmae of Stest changed to Subject
<p>column nmae of Strain changed to Subject
<p>Xtest, Ytest, Stest column binded to make test
<p>Xtrain, Ytrain, Strain column binded to make train
<p>test and train row binded to form data

<p>columns with names containing "mean()" stored in meanCols
<p>columns with names containing "std()" stored in stdCols
<p>meanCols and stdCols combined to form vector Cols

<p>data is transformed with index Cols to contain only columns Activity, Subject, those indexed by Cols

<p>activity_labels.txt is read into actLabels
<p>values in data$Activity are replaced with corresponding values from actLabels

<p>The dplyr library is loaded
<p>data is grouped by Subject and Activity and result stored in groupData
<p>The average of each variable for a given Subject and Activity is calculated and the resulting table is stored in tidyData