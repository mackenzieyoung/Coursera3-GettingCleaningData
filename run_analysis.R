#Mackenzie Young

#Step 0: read in the testing data
test_subj <- read.table("test/subject_test.txt")
test_labels <- read.table("test/y_test.txt", col.names = "activity")
test_set <- read.table("test/X_test.txt")
test <- cbind(test_subj,test_labels,test_set)

#Step 0: read in the trianing data
train_subj <- read.table("train/subject_train.txt")
train_labels <- read.table("train/y_train.txt", col.names = "activity")
train_set <- read.table("train/X_train.txt")
train <- cbind(train_subj,train_labels,train_set)

#Step 1: merge training and testing data
dat_complete <- rbind(test,train)

#Step 2: extract only the columns measuring mean and sd (as specified in features.txt)
dat_MeanSd <- dat_complete[,c(1,2,3,4,5,6,7,8,43,44,45,46,47,48,83,84,85,86,87,88,123,124,125,126,127,128,
                     163,164,165,166,167,168,203,204,216,217,229,230,242,243,255,256,268,269,270,
                     271,272,273,347,348,349,350,351,352,426,427,428,429,430,431,505,506,518,519,
                     531,532,544,545)]

#Step 3: rename activities with descriptive activity names
dat_MeanSd$activity <- ifelse(dat_MeanSd$activity == 1, "walking", 
                        ifelse(dat_MeanSd$activity == 2, "walkingup",
                            ifelse(dat_MeanSd$activity == 3, "walkingdown",
                                ifelse(dat_MeanSd$activity == 4, "sitting", 
                                    ifelse(dat_MeanSd$activity == 5, "standing","laying")))))

#Step 4: label the data set with descriptive variable names
names <- c("subject", "activity","tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y",
"tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X",
"tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y",
"tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z",
"tBodyGyro-mean()-X","tBodyGyro-mean()-Y","tBodyGyro-mean()-Z","tBodyGyro-std()-X","tBodyGyro-std()-Y",
"tBodyGyro-std()-Z","tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z",
"tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z","tBodyAccMag-mean()",
"tBodyAccMag-std()", "tGravityAccMag-mean()","tGravityAccMag-std()", "tBodyAccJerkMag-mean()",
"tBodyAccJerkMag-std()", "tBodyGyroMag-mean()","tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()",
"tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y","fBodyAcc-mean()-Z","fBodyAcc-std()-X",
"fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",
"fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z","fBodyGyro-mean()-X","fBodyGyro-mean()-Y",
"fBodyGyro-mean()-Z","fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z", "fBodyAccMag-mean()",
"fBodyAccMag-std()", "fBodyAccJerkMag-mean()","fBodyAccJerkMag-std()","fBodyBodyGyroMag-mean()",
"fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()")
names <- gsub('\\()',"",names); names <- gsub('-','.',names);
names <- gsub('^t','time',names); names <- gsub('^f','freq',names)
names(dat_MeanSd) <- names

#Step 5: create tidy data set with the average of each variable for each activity and each subject
dat_tidy <- dat_MeanSd %>% group_by(subject, activity) %>% summarise_all(mean)
