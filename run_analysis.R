title1<-read.table("./UCI HAR Dataset/features.txt")

test1<-read.table("./UCI HAR Dataset/test/X_test.txt")
test2<-read.table("./UCI HAR Dataset/test/subject_test.txt")
test3<-read.table("./UCI HAR Dataset/test/y_test.txt")
test1<-cbind(test1,test2)
test1<-cbind(test1,test3)

train1<-read.table("./UCI HAR Dataset/train/X_train.txt")
train2<-read.table("./UCI HAR Dataset/train/subject_train.txt")
train3<-read.table("./UCI HAR Dataset/train/y_train.txt")
train1<-cbind(train1,train2)
train1<-cbind(train1,train3)

data1<-rbind(test1,train1)

title2<-as.character(title1[[2]])
title2<-c(title2,"Subject","Activity")

colnames(data1)<-title2

std1<-grepl("std",title2)  ##Select the "std" columns
mean1<-grepl("mean",title2) ##Select the "mean" columns
data2<-data1[,std1]
data3<-data1[,mean1]
data4<-cbind(data2,data3)

data5<-sapply(data4,mean,na.rm=TRUE)

write.table(data5, file=".\tidydata.txt",row.name=FALSE)
