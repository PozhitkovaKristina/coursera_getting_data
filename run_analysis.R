pacman::p_load(reader,plyr, dplyr, tidyr)
library(data.table)
select<-dplyr::select

setwd("C:/!KRISTINA/!COURSERA/R_Getting and Cleaning Data/week_4/Project")

## download archive with data

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileUrl ,"Dataset.zip")

unzip("Dataset.zip",list = TRUE)


## Merges the training and the test sets to create one data set.

df <- rbind(
  # add columns, compute full data train, create type data
  cbind(
    # read subject for train
    read.table("./UCI HAR Dataset/train/subject_train.txt")%>% rename(ID=V1),
    # read  activity  for train
    read.table("./UCI HAR Dataset/train/y_train.txt")%>% rename(Y=V1),       
    # read t x-train data
    read.table("./UCI HAR Dataset/train/x_train.txt")%>% setNames(paste0("X", sep="_", 1:ncol(.)))) %>% mutate(type=1), 
  # add columns, compute full data test,  , create type data
  cbind(
    # read subject  test
    read.table("./UCI HAR Dataset/test/subject_test.txt")%>% rename(ID=V1),
    # read activity for train
    read.table("./UCI HAR Dataset/test/y_test.txt")%>% rename(Y=V1),
    # read t x-test  data
    read.table("./UCI HAR Dataset/test/x_test.txt")%>% setNames(paste0("X", sep="_", 1:ncol(.)))) %>% mutate(type=2)
)
  

# read labels for the columns of the X data
file_labs<-read.table("./UCI HAR Dataset/features.txt", col.names = c("code","labels")) 

# Read labels for the activities (labs for Y)
file_activity_labs <-read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("code","activity"))


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
labs_var_select <- file_labs[grepl("-(mean|std)\\W", file_labs$labels),]%>% arrange(code)  #  the variable codes containing mean and std
dim(labs_var_select)
df_select<-df%>%select(ID, Y, paste0("X", sep="_", labs_var_select$code)) # save the array with the selected variables

#3. Uses descriptive activity names to name the activities in the data set

df_select_activity <- merge(x=df_select, y=file_activity_labs, by.x = "Y", by.y="code") %>%
  select(ID,  activity_labs=activity, matches("X"))


# 4. Appropriately labels the data set with descriptive variable names.

X_names<- gsub("[()-]","",labs_var_select$labels) # clean the text of labels 

colnames(df_select_activity)<-c("subject", "activity" , X_names) # assign variable names

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# aggregate by subject+activity, function - mean
df_fin <- df_select_activity %>%  
             group_by(subject, activity) %>%  
             summarise_each(funs(mean))

 # save results output file txt -tidy data
write.table(df_fin, file="df_tidy_agr_mean.txt",   sep="\t")

