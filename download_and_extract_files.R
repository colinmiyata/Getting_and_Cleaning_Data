## Function to ensure data is downloaded and extracted in appropriate directory.
## If download is needed, it returns the date downloaded, if not, then it 
## returns null

download_and_extract_files<-function(){
        
        dateDownloaded<-NULL
        
        ## URL of the zip file
        fileURL<- paste("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles",
                        "%2FUCI%20HAR%20Dataset.zip",sep="")
        
        ## Check if desired directory exists, if not create
        if(!dir.exists("./data")) {
                dir.create("./data")
        }
        
        ## Check if zip file exists, if not download and save date
        if(!file.exists("./data/Samsung_Galaxy_S_inertial_data.zip")){
                download.file(fileURL,"./data/Samsung_Galaxy_S_inertial_data.zip",
                              method="curl")
                ## Script written "Sun Nov 22 2015"
                dateDownloaded<-date()
        }
        
        ## Check if zip file has been unzipped before, if not unzip in data directory
        if(!dir.exists("./data/UCI HAR Dataset")){
                unzip("./data/Samsung_Galaxy_S_inertial_data.zip",exdir="./data/")
        }
        
        dateDownloaded
        
}