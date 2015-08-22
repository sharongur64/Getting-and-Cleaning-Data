## Human Activity Recognition Using Smartphones Data Set

# Download data
1. Data is downloaded to a local folder "data"
2. Data unzipped in "data" folder

# read data
1. Column names of measure data are read from "./data/UCI HAR Dataset/features.txt".
2. Activity descriptives are read from "./data/UCI HAR Dataset/activity_labels.txt".
3. Subjects from test data are read from "./data/UCI HAR Dataset/test/subject_test.txt".
4. Activity from test data are read from "./data/UCI HAR Dataset/test/y_test.txt".
5. Measures from test data are read from "./data/UCI HAR Dataset/test/X_test.txt".
6. Columns with no mean and std are removed from measure test data.
7. All test data read so far is binded in data.tst
8. Subjects from train data are read from "./data/UCI HAR Dataset/train/subject_train.txt".
9. Activity from train data are read from "./data/UCI HAR Dataset/train/y_train.txt".
10. Measures from train data are read from "./data/UCI HAR Dataset/train/X_train.txt".
11. Columns with no mean and std are removed from measure train data.
12. All train data read so far is binded in data.train

# union all data
1. data of test and train are unioned.
2. factor activity is replacing activity with descriptives as labels.
3. All data is stored in data.frame "data.all"

# Tidy data
1. All data (data.all) are grouped by subject and activity.
2. function mean is applied on all other columns (that are not grouped by).
3. The tidy data is stored in data.fram "data.tidy"

# Variables 
"subject"                     int represent the person
"activity"                    factor represents the activty type that was measured
"tBodyAcc.mean...X"           num represent a measure of mean value (meaned by subject & activity)
"tBodyAcc.mean...Y"           num represent a measure of mean value (meaned by subject & activity)
"tBodyAcc.mean...Z"           num represent a measure of mean value (meaned by subject & activity)
"tGravityAcc.mean...X"        num represent a measure of mean value (meaned by subject & activity)
"tGravityAcc.mean...Y"        num represent a measure of mean value (meaned by subject & activity)
"tGravityAcc.mean...Z"        num represent a measure of mean value (meaned by subject & activity)
"tBodyAccJerk.mean...X"       num represent a measure of mean value (meaned by subject & activity)
"tBodyAccJerk.mean...Y"       num represent a measure of mean value (meaned by subject & activity)
"tBodyAccJerk.mean...Z"       num represent a measure of mean value (meaned by subject & activity)
"tBodyGyro.mean...X"          num represent a measure of mean value (meaned by subject & activity)
"tBodyGyro.mean...Y"          num represent a measure of mean value (meaned by subject & activity)
"tBodyGyro.mean...Z"          num represent a measure of mean value (meaned by subject & activity)
"tBodyGyroJerk.mean...X"      num represent a measure of mean value (meaned by subject & activity)
"tBodyGyroJerk.mean...Y"      num represent a measure of mean value (meaned by subject & activity)
"tBodyGyroJerk.mean...Z"      num represent a measure of mean value (meaned by subject & activity)
"tBodyAccMag.mean.."          num represent a measure of mean value (meaned by subject & activity)
"tGravityAccMag.mean.."       num represent a measure of mean value (meaned by subject & activity)
"tBodyAccJerkMag.mean.."      num represent a measure of mean value (meaned by subject & activity)
"tBodyGyroMag.mean.."         num represent a measure of mean value (meaned by subject & activity)
"tBodyGyroJerkMag.mean.."     num represent a measure of mean value (meaned by subject & activity)
"fBodyAcc.mean...X"           num represent a measure of mean value (meaned by subject & activity)
"fBodyAcc.mean...Y"           num represent a measure of mean value (meaned by subject & activity)
"fBodyAcc.mean...Z"           num represent a measure of mean value (meaned by subject & activity)
"fBodyAccJerk.mean...X"       num represent a measure of mean value (meaned by subject & activity)
"fBodyAccJerk.mean...Y"       num represent a measure of mean value (meaned by subject & activity)
"fBodyAccJerk.mean...Z"       num represent a measure of mean value (meaned by subject & activity)
"fBodyGyro.mean...X"          num represent a measure of mean value (meaned by subject & activity)
"fBodyGyro.mean...Y"          num represent a measure of mean value (meaned by subject & activity)
"fBodyGyro.mean...Z"          num represent a measure of mean value (meaned by subject & activity)
"fBodyAccMag.mean.."          num represent a measure of mean value (meaned by subject & activity)
"fBodyBodyAccJerkMag.mean.."  num represent a measure of mean value (meaned by subject & activity)
"fBodyBodyGyroMag.mean.."     num represent a measure of mean value (meaned by subject & activity)
"fBodyBodyGyroJerkMag.mean.." num represent a measure of mean value (meaned by subject & activity)
"tBodyAcc.std...X"            num represent a measure of std value (meaned by subject & activity)
"tBodyAcc.std...Y"            num represent a measure of std value (meaned by subject & activity)
"tBodyAcc.std...Z"            num represent a measure of std value (meaned by subject & activity)
"tGravityAcc.std...X"         num represent a measure of std value (meaned by subject & activity)
"tGravityAcc.std...Y"         num represent a measure of std value (meaned by subject & activity)
"tGravityAcc.std...Z"         num represent a measure of std value (meaned by subject & activity)
"tBodyAccJerk.std...X"        num represent a measure of std value (meaned by subject & activity)
"tBodyAccJerk.std...Y"        num represent a measure of std value (meaned by subject & activity)
"tBodyAccJerk.std...Z"        num represent a measure of std value (meaned by subject & activity)
"tBodyGyro.std...X"           num represent a measure of std value (meaned by subject & activity)
"tBodyGyro.std...Y"           num represent a measure of std value (meaned by subject & activity)
"tBodyGyro.std...Z"           num represent a measure of std value (meaned by subject & activity)
"tBodyGyroJerk.std...X"       num represent a measure of std value (meaned by subject & activity)
"tBodyGyroJerk.std...Y"       num represent a measure of std value (meaned by subject & activity)
"tBodyGyroJerk.std...Z"       num represent a measure of std value (meaned by subject & activity)
"tBodyAccMag.std.."           num represent a measure of std value (meaned by subject & activity)
"tGravityAccMag.std.."        num represent a measure of std value (meaned by subject & activity)
"tBodyAccJerkMag.std.."       num represent a measure of std value (meaned by subject & activity)
"tBodyGyroMag.std.."          num represent a measure of std value (meaned by subject & activity)
"tBodyGyroJerkMag.std.."      num represent a measure of std value (meaned by subject & activity)
"fBodyAcc.std...X"            num represent a measure of std value (meaned by subject & activity)
"fBodyAcc.std...Y"            num represent a measure of std value (meaned by subject & activity)
"fBodyAcc.std...Z"            num represent a measure of std value (meaned by subject & activity)
"fBodyAccJerk.std...X"        num represent a measure of std value (meaned by subject & activity)
"fBodyAccJerk.std...Y"        num represent a measure of std value (meaned by subject & activity)
"fBodyAccJerk.std...Z"        num represent a measure of std value (meaned by subject & activity)
"fBodyGyro.std...X"           num represent a measure of std value (meaned by subject & activity)
"fBodyGyro.std...Y"           num represent a measure of std value (meaned by subject & activity)
"fBodyGyro.std...Z"           num represent a measure of std value (meaned by subject & activity)
"fBodyAccMag.std.."           num represent a measure of std value (meaned by subject & activity)
"fBodyBodyAccJerkMag.std.."   num represent a measure of std value (meaned by subject & activity)
"fBodyBodyGyroMag.std.."      num represent a measure of std value (meaned by subject & activity)
"fBodyBodyGyroJerkMag.std.."  num represent a measure of std value (meaned by subject & activity)
