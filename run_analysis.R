library(dplyr)

#Step 1: Download and combine datasets (train & test) into a single dataframe
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp)

train <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
train_labels <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
train_sub <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
train_data <- cbind(train_sub, train_labels, train)

test <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
test_labels <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
test_sub <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
test_data <- cbind(test_sub, test_labels, test)

feats <- read.table(unz(temp, "UCI HAR Dataset/features.txt"))

unlink(temp)

data <- rbind(train_data, test_data)

col_0 <- as.data.frame(t(c(0, "subject")))
col_1 <- as.data.frame(t(c(0,"activity")))
feats <- rbind(col_0, col_1, feats)
names(data) <- feats[,2]

#Step 2: Select only mean and std from dataset
vect <- grep("mean|std", names(data))
vect2 <- grep("meanFreq", names(data))
vect3 <- vect[!vect %in% vect2]
data <- data[,c(1:2,vect3)]

df <- tbl_df(data)

#Step 3: Add descriptive labels to identify the activity measured 
df <- mutate(df, activity = ifelse(activity == 1, "Walking", 
                         ifelse(activity == 2, "Walking Upstairs",
                         ifelse(activity == 3, "Walking Downstairs",
                         ifelse(activity == 4, "Sitting",
                         ifelse(activity == 5, "Standing",
                         ifelse(activity == 6, "Laying","")))))))

#Step 4: Add descriptive variable names
names(df) <- tolower(names(df))
names(df) <- sub("^f", "freq_", names(df))
names(df) <- sub("^t", "time_", names(df))
names(df) <- gsub("body", "", names(df))
names(df) <- gsub("\\()", "", names(df))
names(df) <- gsub("-", "_", names(df))
names(df) <- gsub("acc", "accelerometer_", names(df))
names(df) <- gsub("gravity", "gravity_", names(df))
names(df) <- gsub("gyro", "gyroscope_", names(df))
names(df) <- gsub("jerk", "jerk_", names(df))
names(df) <- gsub("mag", "magnitude_", names(df))
names(df) <- gsub("__", "_", names(df))


#Step 5: Create new dataset with avg of each variable for each subject
subject_activity <- group_by(df, subject, activity)
df2 <- summarize_all(subject_activity, funs(mean))

#output
df2



