# This is the R script to produce the tidy.txt dataset for the course Project of getting and cleaning data.
# The steps are described below. Please be aware that step 2 and 3 are mixed as this gives a better logical flow in the script.

# 1. Merge the training and the test sets to create one datasets

library(tidyverse)
library(dplyr)
library(plyr)

dattrain <- read.table("./train/X_train.txt")
dattest <- read.table("./test/X_test.txt")
dattrainl <- read.table("./train/y_train.txt")
dattestl <- read.table("./test/y_test.txt")

feature <- read.table("features.txt")
act_lab <- read.table("activity_labels.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

# create variable from V and V1 --> pivot after and keep only new variable an name of feature
feat_piv <- feature %>% mutate(feature, varname = paste0("V", V1)) %>% select(varname, V2)%>% spread(varname,V2)

# assign 1st row of feature pivoted as colname to dattrain and dattest
colnames(dattrain) <- as.character(unlist(feat_piv[1,]))
colnames(dattest) <- as.character(unlist(feat_piv[1,]))

names(dattrain)
names(dattest)

# join the labels to the train and test data with subject id and activity id

test <- cbind(dattestl,dattest) 
# rename subject df varname V1 to subject id and then cbind to test
subject_test <- select( subject_test, subject_id = V1 )
test <- cbind(test, subject_test)
# same with train df
train <- cbind(dattrainl,dattrain)
subject_train <- select( subject_train, subject_id = V1 )
train <- cbind(train, subject_train)

# 3. Uses descriptive activity names to name the activities in the data set
# merge test (train) with activity labels based on V1 variable from test(train)
act_lab <- select(act_lab, activity_id = V1, activity_label=V2)
test_rl <- merge(test, act_lab, by.x="V1", by.y="activity_id", all = TRUE)
train_rl <- merge(train, act_lab, by.x="V1", by.y="activity_id", all = TRUE)

# unite test and train dataset
names(test_rl)
names(train_rl)

final <- rbind(test_rl,train_rl)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# select columns that contain mean or std 
columnsToKeep <- grepl("activity_label|subject_id|mean|std", colnames(final))

# keep only the data from above 
final <- final[, columnsToKeep]

names(final)

# 4. Appropriately labels the data set with descriptive variable names.

# retrieve the column names 
columnsfinal <- colnames(final)

# remove special characters
columnsfinal <- gsub("[\\(\\)-]", "", columnsfinal)

# expand abbreviations and clean up names
columnsfinal <- gsub("^f", "frequencyDomain", columnsfinal)
columnsfinal <- gsub("^t", "timeDomain", columnsfinal)
columnsfinal <- gsub("Acc", "Accelerometer", columnsfinal)
columnsfinal <- gsub("Gyro", "Gyroscope", columnsfinal)
columnsfinal <- gsub("Mag", "Magnitude", columnsfinal)
columnsfinal <- gsub("Freq", "Frequency", columnsfinal)
columnsfinal <- gsub("mean", "Mean", columnsfinal)
columnsfinal <- gsub("std", "StandardDeviation", columnsfinal)

# correct typo
columnsfinal <- gsub("BodyBody", "Body", columnsfinal)

# use new labels as column names
colnames(final) <- columnsfinal

# reorder dataset 
final <- select(final, activity_label, subject_id,timeDomainBodyAccelerometerMeanX:timeDomainBodyAccelerometerJerkStandardDeviationZ)
names(final)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_df<- final %>% group_by(activity_label,subject_id ) %>% summarise_all(funs(mean))
write.table(final_df, "tidy.txt")

