## Read.Me

Goal:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The Tidy Data was obteined from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and it was reestructured in a way that the final result is a data frame with 68 columns - 2 IDs (Activity and Subject) and 66 Mean of the original selected variables from the raw data.

The transformation process script is:

1. Read Train and Test sets.
2. Identify the Activity and Subject using left_join() for both datasets.
3. Merge both datasets using Merge() function
4. Define the interest variables (columns)
5. Define variables names
6. group dataset by Activity and Subjet calculating the mean for every variable
7. Export the tidy data in .txt format


##Experiment Header

Human Activity Recognition Using Smartphones Dataset - Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws


