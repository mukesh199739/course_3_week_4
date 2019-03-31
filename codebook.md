
The raw data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Steps followed:

  1) read X, y and subject data for both train and test datasets
  2) merge X, y and subject data for both train and test datasets
  3) read in features descriptions
  4) set descriptive names for all columns in merged X, y and subject data
  5) select features containing measurements on the mean and standard deviation
  6) read in activity descriptions
  7) join activity dataset with descriptive labels
  8) join measurements dataset with activity labels
  9) write this first result data set to csv file "act_mean_std.txt"
  10) join previous result data set with subject ids
  11) summarize means per unique (activity, subject) pair
  12) write this second result data set to csv file "act_sub_mean.txt"
