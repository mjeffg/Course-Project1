# Creating tidy data from raw data set UCI HAR Dataset

# Read train set data into R

# data1 is train/subject_train.txt
data1 <- read.table("UCI HAR Dataset/train/subject_train.txt")

# data2 is train/X_train.txt
data2 <- read.table("UCI HAR Dataset/train/X_train.txt")

# data3 is train/y_train.txt
data3 <- read.table("UCI HAR Dataset/train/Y_train.txt")


# Rename the 1 variable for data1 "V1" to "subject"
names(data1) <- ("subject")
# Rename the 1 variable for data3 "V1" to "activity"
names(data3) <- ("activity")

# Need to rename the levels of data3 into their activities
data3$activity  <- factor(data3$activity, levels = c(1, 2, 3 , 4, 5, 6),
                          labels = c("WALKING", "WALKING_UPSTAIRS",
                                     "WALKING_DOWNSTAIRS", "SITTING",
                                     "STANDING", "LAYING"))

# Merge data1 to data3 & data2 call that data mergedData1

# Load "plyr" package into R
library(plyr)

# Create another variable called "id" in each dataset with values numbered from 1 to 7352
data1$id <- 1:7352
data2$id <- 1:7352
data3$id <- 1:7352

# Create a list of the datasets
dfList1 <- list(data1, data3, data2)

# Merge all three data sets by joining the list by "id"
mergedData1 <- join_all(dfList1, by="id")

# Remove the "id" variable from the merged dataset
mergedData1$id <- NULL

# Variables for mergedData1 need to be renamed
mergedData1 <- rename(mergedData1, c("V1" = "TimeSignalsBodyAccelerationMeanValueXaxis",
                           "V2" = "TimeSignalsBodyAccelerationMeanValueYaxis",
                           "V3" = "TimeSignalsBodyAccelerationMeanValueZaxis",
                           "V4" = "TimeSignalsBodyAccelerationStdDevValueXaxis",
                           "V5" = "TimeSignalsBodyAccelerationStdDevValueYaxis",
                           "V6" = "TimeSignalsBodyAccelerationStdDevValueZaxis",
                           "V41" = "TimeSignalsGravityAccelerationMeanValueXaxis",
                           "V42" = "TimeSignalsGravityAccelerationMeanValueYaxis",
                           "V43" = "TimeSignalsGravityAccelerationMeanValueZaxis",
                           "V44" = "TimeSignalsGravityAccelerationStdDevValueXaxis",
                           "V45" = "TimeSignalsGravityAccelerationStdDevValueYaxis",
                           "V46" = "TimeSignalsGravityAccelerationStdDevValueZaxis",
                           "V81" = "TimeSignalsBodyAccelerationJerkMeanValueXaxis",
                           "V82" = "TimeSignalsBodyAccelerationJerkMeanValueYaxis",
                           "V83" = "TimeSignalsBodyAccelerationJerkMeanValueZaxis",
                           "V84" = "TimeSignalsBodyAccelerationJerkStdDevValueXaxis",
                           "V85" = "TimeSignalsBodyAccelerationJerkStdDevValueYaxis",
                           "V86" = "TimeSignalsBodyAccelerationJerkStdDevValueZaxis",
                           "V121" = "TimeSignalsBodyGyroscopeMeanValueXaxis",
                           "V122" = "TimeSignalsBodyGyroscopeMeanValueYaxis",
                           "V123" = "TimeSignalsBodyGyroscopeMeanValueZaxis",
                           "V124" = "TimeSignalsBodyGyroscopeStdDevValueXaxis",
                           "V125" = "TimeSignalsBodyGyroscopeStdDevValueYaxis", 
                           "V126" = "TimeSignalsBodyGyroscopeStdDevValueZaxis",
                           "V161" = "TimeSignalsBodyGyroscopeJerkMeanValueXaxis",
                           "V162" = "TimeSignalsBodyGyroscopeJerkMeanValueYaxis",
                           "V163" = "TimeSignalsBodyGyroscopeJerkMeanValueZaxis",
                           "V164" = "TimeSignalsBodyGyroscopeJerkStdDevValueXaxis",
                           "V165" = "TimeSignalsBodyGyroscopeJerkStdDevValueYaxis",
                           "V166" = "TimeSignalsBodyGyroscopeJerkStdDevValueZaxis",
                           "V201" = "TimeSignalsBodyAccelerationXYZMagnitudeMeanValue",
                           "V202" = "TimeSignalsBodyAccelerationXYZMagnitudeStdDevValue",
                           "V214" = "TimeSignalsGravityAccelerationXYZMagnitudeMeanValue", 
                           "V215" = "TimeSignalsGravityAccelerationXYZMagnitudeStdDevValue",
                           "V227" = "TimeSignalsBodyAccelerationJerkXYZMagnitudeMeanValue",
                           "V228" = "TimeSignalsBodyAccelerationJerkXYZMagnitudeStdDevValue",
                           "V240" = "TimeSignalsGyroscopeXYZMagnitudeMeanValue", 
                           "V241" = "TimeSignalsGyroscopeXYZMagnitudeStdDevValue",
                           "V253" = "TimeSignalsGyroscopeJerkXYZMagnitudeMeanValue",
                           "V254" = "TimeSignalsGyroscopeJerkXYZMagnitudeStdDevValue",
                           "V266" = "FrequencySignalsBodyAccelerationMeanValueXaxis",
                           "V267" = "FrequencySignalsBodyAccelerationMeanValueYaxis",
                           "V268" = "FrequencySignalsBodyAccelerationMeanValueZaxis",
                           "V269" = "FrequencySignalsBodyAccelerationStdDevValueXaxis",
                           "V270" = "FrequencySignalsBodyAccelerationStdDevValueYaxis",
                           "V271" = "FrequencySignalsBodyAccelerationStdDevValueZaxis",
                           "V345" = "FrequencySignalsBodyAccelerationJerkMeanValueXaxis",
                           "V346" = "FrequencySignalsBodyAccelerationJerkMeanValueYaxis",
                           "V347" = "FrequencySignalsBodyAccelerationJerkMeanValueZaxis",
                           "V348" = "FrequencySignalsBodyAccelerationJerkStdDevValueXaxis",
                           "V349" = "FrequencySignalsBodyAccelerationJerkStdDevValueYaxis",
                           "V350" = "FrequencySignalsBodyAccelerationJerkStdDevValueZaxis",
                           "V424" = "FrequencySignalsBodyGyroscopeMeanValueXaxis",
                           "V425" = "FrequencySignalsBodyGyroscopeMeanValueYaxis",
                           "V426" = "FrequencySignalsBodyGyroscopeMeanValueZaxis",
                           "V427" = "FrequencySignalsBodyGyroscopeStdDevValueXaxis",
                           "V428" = "FrequencySignalsBodyGyroscopeStdDevValueYaxis",
                           "V429" = "FrequencySignalsBodyGyroscopeStdDevValueZaxis",
                           "V503" = "FrequencySignalsBodyAccelerationXYZMagnitudeMeanValue",
                           "V504" = "FrequencySignalsBodyAccelerationXYZMagnitudeStdDevValue",
                           "V516" = "FrequencySignalsBodyAccelerationJerkXYZMagnitudeMeanValue",
                           "V517" = "FrequencySignalsBodyAccelerationJerkXYZMagnitudeStdDevValue",
                           "V529" = "FrequencySignalsBodyGyroscopeXYZMagnitudeMeanValue",
                           "V530" = "FrequencySignalsBodyGyroscopeXYZMagnitudeStdDevValue",
                           "V542" = "FrequencySignalsBodyGyroscopeJerkXYZMagnitudeMeanValue",
                           "V543" = "FrequencySignalsBodyGyroscopeJerkXYZMagnitudeStdDevValue"))

# mergedData1 needs to be trimmed in a subset that includes only means and std variables
mergedData1 <- subset(mergedData1, select = c(1:8, 43:48, 83:88, 123:128, 163:168,
                                    203:204, 216:217, 229:230, 242:243,
                                    255:256, 268:273, 347:352, 426:431,
                                    505:506, 518:519, 531:532, 544:545))

                           
                           

# Do same process to test dataset
# Read test set data into R

# data4 is test/subject_test.txt
data4 <- read.table("UCI HAR Dataset/test/subject_test.txt")

# data5 is test/X_train.txt
data5 <- read.table("UCI HAR Dataset/test/X_test.txt")

# data6 is test/y_test.txt
data6 <- read.table("UCI HAR Dataset/test/y_test.txt")

# Rename the 1 variable for data4 "V1" to "subject"
names(data4) <- ("subject")
# Rename the 1 variable for data6 "V1" to "activity"
names(data6) <- ("activity")

# Need to rename the levels of data6 into their activities
data6$activity  <- factor(data6$activity, levels = c(1, 2, 3 , 4, 5, 6),
                          labels = c("WALKING", "WALKING_UPSTAIRS",
                                    "WALKING_DOWNSTAIRS", "SITTING",
                                    "STANDING", "LAYING"))

# Merge data4 to data6 & data5 call that data mergedData2

# Create another variable "id" in each dataset with rows numbered from 1 to 2947
data4$id <- 1:2947
data5$id <- 1:2947
data6$id <- 1:2947

# Create a list of the datasets
dfList2 <- list(data4, data6, data5)

# Merge by joining data6 with data4 and data4 from the dfList by "id" 
mergedData2 <- join_all(dfList2, by="id")

# Remove the "id" variable from the merged dataset
mergedData2$id <- NULL

# Variables for mergedData2 need to be renamed
mergedData2 <- rename(mergedData2, c("V1" = "TimeSignalsBodyAccelerationMeanValueXaxis",
                           "V2" = "TimeSignalsBodyAccelerationMeanValueYaxis",
                           "V3" = "TimeSignalsBodyAccelerationMeanValueZaxis",
                           "V4" = "TimeSignalsBodyAccelerationStdDevValueXaxis",
                           "V5" = "TimeSignalsBodyAccelerationStdDevValueYaxis",
                           "V6" = "TimeSignalsBodyAccelerationStdDevValueZaxis",
                           "V41" = "TimeSignalsGravityAccelerationMeanValueXaxis",
                           "V42" = "TimeSignalsGravityAccelerationMeanValueYaxis",
                           "V43" = "TimeSignalsGravityAccelerationMeanValueZaxis",
                           "V44" = "TimeSignalsGravityAccelerationStdDevValueXaxis",
                           "V45" = "TimeSignalsGravityAccelerationStdDevValueYaxis",
                           "V46" = "TimeSignalsGravityAccelerationStdDevValueZaxis",
                           "V81" = "TimeSignalsBodyAccelerationJerkMeanValueXaxis",
                           "V82" = "TimeSignalsBodyAccelerationJerkMeanValueYaxis",
                           "V83" = "TimeSignalsBodyAccelerationJerkMeanValueZaxis",
                           "V84" = "TimeSignalsBodyAccelerationJerkStdDevValueXaxis",
                           "V85" = "TimeSignalsBodyAccelerationJerkStdDevValueYaxis",
                           "V86" = "TimeSignalsBodyAccelerationJerkStdDevValueZaxis",
                           "V121" = "TimeSignalsBodyGyroscopeMeanValueXaxis",
                           "V122" = "TimeSignalsBodyGyroscopeMeanValueYaxis",
                           "V123" = "TimeSignalsBodyGyroscopeMeanValueZaxis",
                           "V124" = "TimeSignalsBodyGyroscopeStdDevValueXaxis",
                           "V125" = "TimeSignalsBodyGyroscopeStdDevValueYaxis", 
                           "V126" = "TimeSignalsBodyGyroscopeStdDevValueZaxis",
                           "V161" = "TimeSignalsBodyGyroscopeJerkMeanValueXaxis",
                           "V162" = "TimeSignalsBodyGyroscopeJerkMeanValueYaxis",
                           "V163" = "TimeSignalsBodyGyroscopeJerkMeanValueZaxis",
                           "V164" = "TimeSignalsBodyGyroscopeJerkStdDevValueXaxis",
                           "V165" = "TimeSignalsBodyGyroscopeJerkStdDevValueYaxis",
                           "V166" = "TimeSignalsBodyGyroscopeJerkStdDevValueZaxis",
                           "V201" = "TimeSignalsBodyAccelerationXYZMagnitudeMeanValue",
                           "V202" = "TimeSignalsBodyAccelerationXYZMagnitudeStdDevValue",
                           "V214" = "TimeSignalsGravityAccelerationXYZMagnitudeMeanValue", 
                           "V215" = "TimeSignalsGravityAccelerationXYZMagnitudeStdDevValue",
                           "V227" = "TimeSignalsBodyAccelerationJerkXYZMagnitudeMeanValue",
                           "V228" = "TimeSignalsBodyAccelerationJerkXYZMagnitudeStdDevValue",
                           "V240" = "TimeSignalsGyroscopeXYZMagnitudeMeanValue", 
                           "V241" = "TimeSignalsGyroscopeXYZMagnitudeStdDevValue",
                           "V253" = "TimeSignalsGyroscopeJerkXYZMagnitudeMeanValue",
                           "V254" = "TimeSignalsGyroscopeJerkXYZMagnitudeStdDevValue",
                           "V266" = "FrequencySignalsBodyAccelerationMeanValueXaxis",
                           "V267" = "FrequencySignalsBodyAccelerationMeanValueYaxis",
                           "V268" = "FrequencySignalsBodyAccelerationMeanValueZaxis",
                           "V269" = "FrequencySignalsBodyAccelerationStdDevValueXaxis",
                           "V270" = "FrequencySignalsBodyAccelerationStdDevValueYaxis",
                           "V271" = "FrequencySignalsBodyAccelerationStdDevValueZaxis",
                           "V345" = "FrequencySignalsBodyAccelerationJerkMeanValueXaxis",
                           "V346" = "FrequencySignalsBodyAccelerationJerkMeanValueYaxis",
                           "V347" = "FrequencySignalsBodyAccelerationJerkMeanValueZaxis",
                           "V348" = "FrequencySignalsBodyAccelerationJerkStdDevValueXaxis",
                           "V349" = "FrequencySignalsBodyAccelerationJerkStdDevValueYaxis",
                           "V350" = "FrequencySignalsBodyAccelerationJerkStdDevValueZaxis",
                           "V424" = "FrequencySignalsBodyGyroscopeMeanValueXaxis",
                           "V425" = "FrequencySignalsBodyGyroscopeMeanValueYaxis",
                           "V426" = "FrequencySignalsBodyGyroscopeMeanValueZaxis",
                           "V427" = "FrequencySignalsBodyGyroscopeStdDevValueXaxis",
                           "V428" = "FrequencySignalsBodyGyroscopeStdDevValueYaxis",
                           "V429" = "FrequencySignalsBodyGyroscopeStdDevValueZaxis",
                           "V503" = "FrequencySignalsBodyAccelerationXYZMagnitudeMeanValue",
                           "V504" = "FrequencySignalsBodyAccelerationXYZMagnitudeStdDevValue",
                           "V516" = "FrequencySignalsBodyAccelerationJerkXYZMagnitudeMeanValue",
                           "V517" = "FrequencySignalsBodyAccelerationJerkXYZMagnitudeStdDevValue",
                           "V529" = "FrequencySignalsBodyGyroscopeXYZMagnitudeMeanValue",
                           "V530" = "FrequencySignalsBodyGyroscopeXYZMagnitudeStdDevValue",
                           "V542" = "FrequencySignalsBodyGyroscopeJerkXYZMagnitudeMeanValue",
                           "V543" = "FrequencySignalsBodyGyroscopeJerkXYZMagnitudeStdDevValue"))

# mergedData2 needs to be trimmed into a subset that includes only means and std variables
mergedData2 <- subset(mergedData2, select = c(1:8, 43:48, 83:88, 123:128, 163:168,
                                    203:204, 216:217, 229:230, 242:243,
                                    255:256, 268:273, 347:352, 426:431,
                                    505:506, 518:519, 531:532, 544:545))

# Merge the train and test datasets
tidyData1 <- rbind(mergedData1, mergedData2)

# Check tidyData1 data set to see if correct
names(tidyData1)
str(tidyData1)
tidyData1[1,]
summary(tidyData1)



# Create a second independent tidy data set with the average for each variable
#   for each subject in each activity or 30 subjects * 6 activities
# Use agrregate function to find mean for each variable by subject and activity
tidyData2 <-aggregate(tidyData1[3:68], by=list(tidyData1$subject, tidyData1$activity),FUN=mean, na.rm=TRUE)

# Rename first two variables back to "subject"' and "activity" from "Group.1" and "Group.2"
tidyData2 <- rename(tidyData2, c("Group.1" = "subject", "Group.2" = "activity"))

# Export tidy data set 1 as a tab delimited text file using write.table()
write.table(tidyData1, "tidyData1.txt", sep = "\t")

# Export tidy data set 2 as a tab delimited text file using write.table()
write.table(tidyData2, "tidyData2.txt", sep = "\t")


