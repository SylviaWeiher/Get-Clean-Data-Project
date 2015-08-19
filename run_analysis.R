# Variablenames for datasets test & train
Features <- read.table("./features.txt")
CoNames <- t(select(Features, V2))

# dataset of training data
X_train <- read.table("./train/X_train.txt", col.names = CoNames)
# label for activity (1-6)
Y_train <- read.table("./train/y_train.txt")
# subject who performed the activity (1-30)
Sub_train <- read.table("./train/subject_train.txt")

# bring variables of training together and mark all observations as training observations
Train <- bind_cols(Y_train, Sub_train, X_train)
colnames(Train)[1] <- "labels"
colnames(Train)[2] <- "subject"
Train <- mutate(Train, status = "Train")

# dataset of test data
X_test <- read.table("./test/X_test.txt", col.names = CoNames)
# label for activity (1-6)
Y_test <- read.table("./test/y_test.txt")
# subject who performed the activity (1-30)
Sub_test <- read.table("./test/subject_test.txt")

# bring variables of test together and mark all observations as test observations
Test <- bind_cols(Y_test, Sub_test, X_test)
colnames(Test)[1] <- "labels"
colnames(Test)[2] <- "subject"
Test <- mutate(Test, status = "Test")

# bring training and test data together in one dataset
Data1 <- bind_rows(Train, Test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
Data2 <- select(Data1, labels, subject, status, contains("mean"), contains("std"))

# Uses descriptive activity names to name the activities in the data set
activity <- read.table("./activity_labels.txt")
Data3 <- merge(Data2, activity, by.x = "labels", by.y = "V1")
colnames(Data3)[colnames(Data3) == "V2"] <- "activities"

# creates tidy data set with the average of each variable for each activity and each subject.
Data4 <- group_by(Data3, activities, subject)
write.table(Data4, "Data.txt", row.names = FALSE)


