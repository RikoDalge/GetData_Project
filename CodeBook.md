#Code Book

##Original CodeBook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

##New Variables

The set of variables were extracted from the raw data and they were chosen by there names. All variables that express Mean or Standard Deviation were selected. The final tudy data presents the mean of those variable's names grouped by Subject (ID which identify the studied person. It varies from 1-30) and by Activity (which can be WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING).

Below you will find the selected IDs. The list with all variables is available in features.txt and features_info.txt at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The Selected Variables ID are:

ID	Variable Name
1	  tBodyAcc-mean()-X
2	  tBodyAcc-mean()-Y
3	  tBodyAcc-mean()-Z
4	  tBodyAcc-std()-X
5	  tBodyAcc-std()-Y
6	  tBodyAcc-std()-Z
41	tGravityAcc-mean()-X
42	tGravityAcc-mean()-Y
43	tGravityAcc-mean()-Z
44	tGravityAcc-std()-X
45	tGravityAcc-std()-Y
46	tGravityAcc-std()-Z
81	tBodyAccJerk-mean()-X
82	tBodyAccJerk-mean()-Y
83	tBodyAccJerk-mean()-Z
84	tBodyAccJerk-std()-X
85	tBodyAccJerk-std()-Y
86	tBodyAccJerk-std()-Z
121	tBodyGyro-mean()-X
122	tBodyGyro-mean()-Y
123	tBodyGyro-mean()-Z
124	tBodyGyro-std()-X
125	tBodyGyro-std()-Y
126	tBodyGyro-std()-Z
161	tBodyGyroJerk-mean()-X
162	tBodyGyroJerk-mean()-Y
163	tBodyGyroJerk-mean()-Z
164	tBodyGyroJerk-std()-X
165	tBodyGyroJerk-std()-Y
166	tBodyGyroJerk-std()-Z
201	tBodyAccMag-mean()
202	tBodyAccMag-std()
214	tGravityAccMag-mean()
215	tGravityAccMag-std()
227	tBodyAccJerkMag-mean()
228	tBodyAccJerkMag-std()
240	tBodyGyroMag-mean()
241	tBodyGyroMag-std()
253	tBodyGyroJerkMag-mean()
254	tBodyGyroJerkMag-std()
266	fBodyAcc-mean()-X
267	fBodyAcc-mean()-Y
268	fBodyAcc-mean()-Z
269	fBodyAcc-std()-X
270	fBodyAcc-std()-Y
271	fBodyAcc-std()-Z
345	fBodyAccJerk-mean()-X
346	fBodyAccJerk-mean()-Y
347	fBodyAccJerk-mean()-Z
348	fBodyAccJerk-std()-X
349	fBodyAccJerk-std()-Y
350	fBodyAccJerk-std()-Z
424	fBodyGyro-mean()-X
425	fBodyGyro-mean()-Y
426	fBodyGyro-mean()-Z
427	fBodyGyro-std()-X
428	fBodyGyro-std()-Y
429	fBodyGyro-std()-Z
503	fBodyAccMag-mean()
504	fBodyAccMag-std()
516	fBodyBodyAccJerkMag-mean()
517	fBodyBodyAccJerkMag-std()
529	fBodyBodyGyroMag-mean()
530	fBodyBodyGyroMag-std()
542	fBodyBodyGyroJerkMag-mean()
543	fBodyBodyGyroJerkMag-std()
