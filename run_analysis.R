# Provides a tidy data set for the original data obtained from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# MAIN STEPS:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data
#    set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy 
#    data set with the average of each variable for each activity and 
#    each subject.
#
# Author: Fernando Vicente Guijalba
# Date: Apr 2015

library(dplyr)

run_analysis <- function(){

        # Read activities and features names (for labeling)
        activity_file = './UCI\ HAR\ Dataset/activity_labels.txt'
        activity <- read.table(activity_file,header=FALSE,col.names=c("ID","Name"))
        features_file = './UCI\ HAR\ Dataset/features.txt'
        feature <- read.table(features_file,header=FALSE,col.names=c("ID","Name"))
        
        # READ TEST INFORMATION -----------------------------------------------
        # Read observation file (assign variable names from features_file)
        data_file_test = './UCI\ HAR\ Dataset/test/X_test.txt'
        dataTest <- read.table(data_file_test,header=FALSE,col.names=feature$Name)
        
        # Get just the mean and standard deviation for each measurement
        dataTest <- dataTest[,grepl("(mean|std)+[\\.]", colnames(dataTest))]
        
        # Add activity information to data frame (assign labels from activity_file)
        acti_file_test = './UCI\ HAR\ Dataset/test/y_test.txt'
        dataTest["Activity"] <- read.table(acti_file_test,header=FALSE)
        dataTest$Activity <- factor(dataTest$Activity,labels=activity$Name)
        
        # Add subjects information to data frame
        subj_file_test = './UCI\ HAR\ Dataset/test/subject_test.txt'
        subjTest <- read.table(subj_file_test,header=FALSE)
        dataTest["Subject"] <- subjTest
        
        # READ TRAIN INFORMATION ----------------------------------------------
        # Read observation file (assign variable names from features_file)
        data_file_train = './UCI\ HAR\ Dataset/train/X_train.txt'
        dataTrain <- read.table(data_file_train,header=FALSE,col.names=feature$Name)
        
        # Get just the mean and standard deviation for each measurement
        dataTrain <- dataTrain[,grepl("(mean|std)+[\\.]", colnames(dataTrain))]
        
        # Add activity information to data frame (assign labels from activity_file)
        acti_file_train = './UCI\ HAR\ Dataset/train/y_train.txt'
        dataTrain["Activity"] <- read.table(acti_file_train,header=FALSE)
        dataTrain$Activity <- factor(dataTrain$Activity,labels=activity$Name)
        
        # Add subjects information to data frame
        subj_file_train = './UCI\ HAR\ Dataset/train/subject_train.txt'
        subjTrain <- read.table(subj_file_train,header=FALSE)
        dataTrain["Subject"] <- subjTrain
        
        # MERGES TEST / TRAIN DATA SETS ---------------------------------------
        mData <- rbind_list(dataTest, dataTrain)
        
        names(mData)<-gsub("^t", "time", names(mData))
        names(mData)<-gsub("^f", "frequency", names(mData))
        names(mData)<-gsub("Acc", "Accelerometer", names(mData))
        names(mData)<-gsub("Gyro", "Gyroscope", names(mData))
        names(mData)<-gsub("Mag", "Magnitude", names(mData))
        names(mData)<-gsub("BodyBody", "Body", names(mData))
        
        # SUBSET FOR EACH SUBJECT AND ACTIVITY --------------------------------
        mData2<-aggregate(. ~Subject + Activity, mData, mean)
        mData2<-mData2[order(mData2$Subject,mData2$Activity),]
        write.table(mData2, file = "./UCI\ HAR\ Dataset/tidy.txt",row.name=FALSE)
        
        # That's all !!
}
        
        
        