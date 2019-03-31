library(reshape2)
xtrain <- read.table("data/train/X_train.txt")
xtest <- read.table("data/test/X_test.txt")
ytrain <- read.table("data/train/y_train.txt")
ytest <- read.table("data/test/y_test.txt")
subject_test <- read.table("data/test/subject_test.txt")
subject_train <- read.table("data/train/subject_train.txt")
x<-rbind(xtest,xtrain)
y<-rbind(ytest,ytrain)
n<-read.table("data/features.txt")
names(x)=n$V2
names(y)="activity"
meann<-grepl("mean",names(x))
sdd<-grepl("std",names(x))
mean_sd=meann | sdd
x_2<-x[,mean_sd]
write.table(x_2, "act_mean_std.txt",row.names  = F)
mydata=cbind(x_2,y)
subject=rbind(subject_test,subject_train)
names(subject)="subject"
mydata2=cbind(mydata,subject)
mydata3 <- melt(mydata2, id=c("subject", "activity"))
mydata3 <- dcast(mydata3, activity + subject ~ variable, mean)
write.table(mydata3, "act_sub_mean.txt",row.names  = F)
