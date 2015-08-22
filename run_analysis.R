
#Set working directory
setwd("~/Coursera/Getting and Cleaning Data")

library("dplyr")

# if not exist create a subdir "data"
if (!file.exists("data")) {
  dir.create("data")
}
#list.files("./data")

# download + unzip project data into the subdir
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("./data/getdata_projectfiles_UCI HAR Dataset.zip")) {
  download.file(fileUrl, destfile = "./data/getdata_projectfiles_UCI HAR Dataset.zip", method = "auto")
  # unzip data
  unzip ("./data/getdata_projectfiles_UCI HAR Dataset.zip",
         exdir = "./data")
  list.files("./data")
}


# read column labels
data.label <- read.table("./data/UCI HAR Dataset/features.txt",
                         col.names = c("col.num","label"))

#
# read data
#

# get activity labels
activity.label <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                             col.names = list("activity","label"))
# get subject
data.tst.subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",
                               col.names = "subject")
#get activity
data.tst.activity <- read.table("./data/UCI HAR Dataset/test/y_test.txt",
                                col.names = "activity")
#get measures
data.tst.measures <- read.table("./data/UCI HAR Dataset/test/X_test.txt",
                                col.names = data.label$label)
# leave only mean + std
data.tst.measures <- select(data.tst.measures, contains(".mean.."),
                              contains(".std.."))
# bind tst
data.tst <- cbind(data.tst.subject, data.tst.activity, data.tst.measures)

# get subject
data.train.subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                                 col.names = "subject")
#get activity
data.train.activity <- read.table("./data/UCI HAR Dataset/train/y_train.txt",
                                  col.names = "activity")
data.train.measures <- read.table("./data/UCI HAR Dataset/train/X_train.txt",
                                  col.names = data.label$label)
# leave only mean + std
data.train.measures <- select(data.train.measures, contains(".mean.."),
                              contains(".std.."))

# bind train
data.train <- cbind(data.train.subject, data.train.activity, data.train.measures)


# union all data
data.all <- 
  union(data.train,data.tst) %>%
  mutate(activity=factor(activity, labels=activity.label$label))


#
# tidy and summarise
#

data.tidy <-
  data.all %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# data.tidy[1:10,1:4]
write.table(data.tidy, file="./data/tidy_data.txt", row.names = FALSE)
