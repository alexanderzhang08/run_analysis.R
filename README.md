run_analysis.R
This is my code
Variables:


title1 is to store features

test1,test2,test3 are to store all values from test file and use cbind to get a new data set

Similar for train. 

Merge those two,test, train, we get data1 

In order to add activities and subjects, I use title1 to create a temporary storage title2.

std1 and mean1 are used to select the columns as required.

use sapply function to find the average of each varibale.

write.table(data5, file=".\tidydata.txt",row.name=FALSE)
==============
