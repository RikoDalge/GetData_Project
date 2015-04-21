#run_analysis.R - Data Science Specialization

library(dplyr)
library(plyr)
        
#Getting Data Info

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

#Getting Training Set

x <- read.table("./UCI HAR Dataset/train/X_train.txt")     
y <- read.table("./UCI HAR Dataset/train/y_train.txt") 
people <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#3.label Activity names to name the activities in the data set 
my_Test <- left_join(y, activity)

TrainSet <- cbind(my_Test, people, x)
colnames(TrainSet) <- c("Activity", "Activity Name", "Subject",
                        c(1:561))

#Getting Test Set

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")     
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt") 
people_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#3.label Activity names to name the activities in the data set
my_Test <- left_join(y_test, activity)

TestSet <- cbind(my_Test, people_test, x_test)
colnames(TestSet) <- c("Activity", "Activity Name", "Subject",
                       c(1:561))

#1.Mergin Data - Train + Test

merged_Set <- merge(TrainSet,TestSet,all=TRUE)

#2.Extracts only the measurements on the mean and standard deviation

WantedFeatures <- features[grep("(mean|std)\\(", features[,2]),]
tidyFea <- merged_Set[,c(c(1:3), WantedFeatures[,1]+3)]

#4.labels the data set with descriptive variable names

colnames(tidyFea) <- c("Activity_ID", "Activity.Name", "Subject",
                       as.character(WantedFeatures[,2]))


#5.tidy data set with the average of each variable for each 
#activity and each subject.

tidyData <- aggregate(tidyFea, by = list(tidyFea[,2], 
                                         tidyFea[,3]), mean)

tidyData <- rename(tidyData, c("Group.1" = "Activity", 
                               "Group.2" = "Subject.ID"))

tidyData$Activity_ID <- NULL
tidyData$Activity.Name <- NULL
tidyData$Subject <- NULL

# write the dataset to a file
write.table(tidyData, "tidyData.txt", sep="\t", row.name=FALSE)
