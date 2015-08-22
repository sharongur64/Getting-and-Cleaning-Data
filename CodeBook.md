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
1.  "subject"                     int represent the person
2.  "activity"                    factor represents the activty type that was measured
3.  "tBodyAcc.mean...X"           num represent a measure of mean value (meaned by subject & activity)
4.  "tBodyAcc.mean...Y"           num represent a measure of mean value (meaned by subject & activity)
5.  "tBodyAcc.mean...Z"           num represent a measure of mean value (meaned by subject & activity)
6.  "tGravityAcc.mean...X"        num represent a measure of mean value (meaned by subject & activity)
7.  "tGravityAcc.mean...Y"        num represent a measure of mean value (meaned by subject & activity)
8.  "tGravityAcc.mean...Z"        num represent a measure of mean value (meaned by subject & activity)
9.  "tBodyAccJerk.mean...X"       num represent a measure of mean value (meaned by subject & activity)
10. "tBodyAccJerk.mean...Y"       num represent a measure of mean value (meaned by subject & activity)
11. "tBodyAccJerk.mean...Z"       num represent a measure of mean value (meaned by subject & activity)
12. "tBodyGyro.mean...X"          num represent a measure of mean value (meaned by subject & activity)
13. "tBodyGyro.mean...Y"          num represent a measure of mean value (meaned by subject & activity)
14. "tBodyGyro.mean...Z"          num represent a measure of mean value (meaned by subject & activity)
15. "tBodyGyroJerk.mean...X"      num represent a measure of mean value (meaned by subject & activity)
16. "tBodyGyroJerk.mean...Y"      num represent a measure of mean value (meaned by subject & activity)
17. "tBodyGyroJerk.mean...Z"      num represent a measure of mean value (meaned by subject & activity)
18. "tBodyAccMag.mean.."          num represent a measure of mean value (meaned by subject & activity)
19. "tGravityAccMag.mean.."       num represent a measure of mean value (meaned by subject & activity)
20. "tBodyAccJerkMag.mean.."      num represent a measure of mean value (meaned by subject & activity)
21. "tBodyGyroMag.mean.."         num represent a measure of mean value (meaned by subject & activity)
22. "tBodyGyroJerkMag.mean.."     num represent a measure of mean value (meaned by subject & activity)
23. "fBodyAcc.mean...X"           num represent a measure of mean value (meaned by subject & activity)
24. "fBodyAcc.mean...Y"           num represent a measure of mean value (meaned by subject & activity)
25. "fBodyAcc.mean...Z"           num represent a measure of mean value (meaned by subject & activity)
26. "fBodyAccJerk.mean...X"       num represent a measure of mean value (meaned by subject & activity)
27. "fBodyAccJerk.mean...Y"       num represent a measure of mean value (meaned by subject & activity)
28. "fBodyAccJerk.mean...Z"       num represent a measure of mean value (meaned by subject & activity)
29. "fBodyGyro.mean...X"          num represent a measure of mean value (meaned by subject & activity)
30. "fBodyGyro.mean...Y"          num represent a measure of mean value (meaned by subject & activity)
31. "fBodyGyro.mean...Z"          num represent a measure of mean value (meaned by subject & activity)
32. "fBodyAccMag.mean.."          num represent a measure of mean value (meaned by subject & activity)
33. "fBodyBodyAccJerkMag.mean.."  num represent a measure of mean value (meaned by subject & activity)
34. "fBodyBodyGyroMag.mean.."     num represent a measure of mean value (meaned by subject & activity)
35. "fBodyBodyGyroJerkMag.mean.." num represent a measure of mean value (meaned by subject & activity)
36. "tBodyAcc.std...X"            num represent a measure of std value (meaned by subject & activity)
37. "tBodyAcc.std...Y"            num represent a measure of std value (meaned by subject & activity)
38. "tBodyAcc.std...Z"            num represent a measure of std value (meaned by subject & activity)
39. "tGravityAcc.std...X"         num represent a measure of std value (meaned by subject & activity)
40. "tGravityAcc.std...Y"         num represent a measure of std value (meaned by subject & activity)
41. "tGravityAcc.std...Z"         num represent a measure of std value (meaned by subject & activity)
42. "tBodyAccJerk.std...X"        num represent a measure of std value (meaned by subject & activity)
43. "tBodyAccJerk.std...Y"        num represent a measure of std value (meaned by subject & activity)
44. "tBodyAccJerk.std...Z"        num represent a measure of std value (meaned by subject & activity)
45. "tBodyGyro.std...X"           num represent a measure of std value (meaned by subject & activity)
46. "tBodyGyro.std...Y"           num represent a measure of std value (meaned by subject & activity)
47. "tBodyGyro.std...Z"           num represent a measure of std value (meaned by subject & activity)
48. "tBodyGyroJerk.std...X"       num represent a measure of std value (meaned by subject & activity)
49. "tBodyGyroJerk.std...Y"       num represent a measure of std value (meaned by subject & activity)
50. "tBodyGyroJerk.std...Z"       num represent a measure of std value (meaned by subject & activity)
51. "tBodyAccMag.std.."           num represent a measure of std value (meaned by subject & activity)
52. "tGravityAccMag.std.."        num represent a measure of std value (meaned by subject & activity)
53. "tBodyAccJerkMag.std.."       num represent a measure of std value (meaned by subject & activity)
54. "tBodyGyroMag.std.."          num represent a measure of std value (meaned by subject & activity)
55. "tBodyGyroJerkMag.std.."      num represent a measure of std value (meaned by subject & activity)
56. "fBodyAcc.std...X"            num represent a measure of std value (meaned by subject & activity)
57. "fBodyAcc.std...Y"            num represent a measure of std value (meaned by subject & activity)
58. "fBodyAcc.std...Z"            num represent a measure of std value (meaned by subject & activity)
59. "fBodyAccJerk.std...X"        num represent a measure of std value (meaned by subject & activity)
60. "fBodyAccJerk.std...Y"        num represent a measure of std value (meaned by subject & activity)
61. "fBodyAccJerk.std...Z"        num represent a measure of std value (meaned by subject & activity)
62. "fBodyGyro.std...X"           num represent a measure of std value (meaned by subject & activity)
63. "fBodyGyro.std...Y"           num represent a measure of std value (meaned by subject & activity)
64. "fBodyGyro.std...Z"           num represent a measure of std value (meaned by subject & activity)
65. "fBodyAccMag.std.."           num represent a measure of std value (meaned by subject & activity)
66. "fBodyBodyAccJerkMag.std.."   num represent a measure of std value (meaned by subject & activity)
67. "fBodyBodyGyroMag.std.."      num represent a measure of std value (meaned by subject & activity)
68. "fBodyBodyGyroJerkMag.std.."  num represent a measure of std value (meaned by subject & activity)
