## Script to extract tidy data set from features of the Samsung Galaxy S 
## inertial data

## The script requires the dplyr, reshape2 packages

library(dplyr)
library(reshape2)

## Source required functions

source("download_and_extract_files.R")
source("place_data_in_frame.R")

## Ensure data is downloaded from internet and unzip if necessary

dateDownloaded<-download_and_extract_files() ## Written "Sun Nov 22 2015"

## Extract training data and test data, merge and arrange by subject and 
## activities

train_set<-place_data_in_frame("train")
test_set<-place_data_in_frame("test")
complete<-rbind(train_set,test_set)

## Get indices for columns of means and standard deviations

mean_indices<-grep("[:print:]*-mean\\([:print:]*",names(complete))
std_indices<-grep("[:print:]*-std\\([:print:]*",names(complete))

## Interweave names so it goes mean, then standard deviation for each variable

mean_std_indices<-vector(mode="numeric",length=2*length(mean_indices+1))
mean_std_indices[1]<-1 ## Retain subjects
mean_std_indices[2]<-2 ## Retain activities
for(i in 1:length(mean_indices)) {
        mean_std_indices[2*i+1]<-mean_indices[i]
        mean_std_indices[2*i+2]<-std_indices[i]
}

## Extract only means and stds and sort by subject and activities

complete_mean_std<-complete[,mean_std_indices]
complete_mean_std<-arrange(complete_mean_std,Subjects,Activities)

## Add useful names

newNames<-read.table("newNames.txt")
names(complete_mean_std)<-newNames[,1]

## Melt and recast data in required form

meltComplete<-melt(complete_mean_std,id=c("Subjects","Activities"))
tidy<-dcast(meltComplete,Subjects+Activities~variable,mean)

## Export tidy data set

write.table(tidy,"tidy_data_set.txt",row.names = FALSE,col.names = TRUE)