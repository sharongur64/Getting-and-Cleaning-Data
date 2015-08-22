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
