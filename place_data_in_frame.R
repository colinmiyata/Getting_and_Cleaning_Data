## Function to return the data.frame with the named features, the id of the user
## and the activity. Which set indicates whether the training or test is
## extracted and should be either "train" or "test"

place_data_in_frame <- function(which_set) {
        
        ## Get the features
        
        if (file.exists(paste("./data/UCI HAR Dataset/",which_set,"/X_",
                              which_set,".txt",sep=""))) {
                features<-read.table(paste("./data/UCI HAR Dataset/",which_set,"/X_",
                                             which_set,".txt",sep=""))
        } else if (file.exists(paste("./UCI HAR Dataset/",which_set,"/X_",
                                     which_set,".txt",sep=""))) {
                features<-read.table(paste("./UCI HAR Dataset/",which_set,"/X_",
                                             which_set,".txt",sep=""))
        } else if (file.exists(paste("./",which_set,"/X_",
                                     which_set,".txt",sep=""))) {
                features<-read.table(paste("./",which_set,"/X_",
                                             which_set,".txt",sep=""))
        } else {
                features<-read.table(paste("./X_",
                                             which_set,".txt",sep=""))
        }
        
        ## Get feature names
        
        if (file.exists("./data/UCI HAR Dataset/features.txt")) {
                name_Features<-read.table("./data/UCI HAR Dataset/features.txt")
        } else if (file.exists("./UCI HAR Dataset/features.txt")) {
                name_Features<-read.table("./UCI HAR Dataset/features.txt")
        } else {
                name_Features<-read.table("./features.txt")
        }
        
        name_Features<-read.table("./data/UCI HAR Dataset/features.txt")
        
        ## Place feature names
        names(features)<-name_Features[,2]
        
        ## Extract activities and convert to factor
        if (file.exists(paste("./data/UCI HAR Dataset/",which_set,"/y_",
                             which_set,".txt",sep=""))) {
                activities<-read.table(paste("./data/UCI HAR Dataset/",which_set,"/y_",
                                        which_set,".txt",sep=""))
        } else if (file.exists(paste("./UCI HAR Dataset/",which_set,"/y_",
                                     which_set,".txt",sep=""))) {
                activities<-read.table(paste("./UCI HAR Dataset/",which_set,"/y_",
                                             which_set,".txt",sep=""))
        } else if (file.exists(paste("./",which_set,"/y_",
                                     which_set,".txt",sep=""))) {
                activities<-read.table(paste("./",which_set,"/y_",
                                             which_set,".txt",sep=""))
        } else {
                activities<-read.table(paste("./y_",
                                             which_set,".txt",sep=""))
        }
        
        activities[,1]<-as.factor(activities[,1])
        
        ## Rename activities something useful
        names(activities)<-"Activities"
        levels(activities[,1])<-c("WALKING","WALKING_UPSTAIRS",
                                     "WALKING_DOWNSTAIRS","SITTING","STANDING",
                                     "LAYING")
        
        ## Append to features
        temp<-cbind(activities,features)
        
        ## Extract users and rename
        if (file.exists(paste("./data/UCI HAR Dataset/",which_set,"/subject_",
                              which_set,".txt",sep=""))) {
                subjects<-read.table(paste("./data/UCI HAR Dataset/",which_set,"/subject_",
                                             which_set,".txt",sep=""))
        } else if (file.exists(paste("./UCI HAR Dataset/",which_set,"/subject_",
                                     which_set,".txt",sep=""))) {
                subjects<-read.table(paste("./UCI HAR Dataset/",which_set,"/subject_",
                                             which_set,".txt",sep=""))
        } else if (file.exists(paste("./",which_set,"/subject_",
                                     which_set,".txt",sep=""))) {
                subjects<-read.table(paste("./",which_set,"/subject_",
                                             which_set,".txt",sep=""))
        } else {
                subjects<-read.table(paste("./subject_",
                                             which_set,".txt",sep=""))
        }
        names(subjects)<-"Subjects"
        
        ## Append to features
        
        temp<-cbind(subjects,temp)
        
}