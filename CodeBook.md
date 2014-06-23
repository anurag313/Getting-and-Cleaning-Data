Code Book 
========================

## Data Download

1. Data was manually downloaded from the following URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. The file was unzipped into the working directory which  now had the directory "UCI HAR Dataset" having all the data set files.

3. The directory "UCI HAR Dataset" includes the following directories and files:
* activity_labels.txt (text file)
* features.txt (text file) 
* features_info.txt (text file)
* README.txt (text file)
* test (directory)
* train (directory)

## Data Processing

1. Data processing is done in the code (with the proper comments) which results in creation of tab-delimited text file "tidydata.txt"


## Column names in the tidydata.txt file: 

 * "activity"                        
 * "timebodyaccmeanx"                 
 * "subject"                          
 * "timebodyaccmeany"                
 * "timebodyaccmeanz"                 
 * "timebodyaccstdx"                 
 * "timebodyaccstdy"                  
 * "timebodyaccstdz"                 
 * "timegravityaccmeanx"              
 * "timegravityaccmeany"             
 * "timegravityaccmeanz"              
 * "timegravityaccstdx"              
 * "timegravityaccstdy"               
 * "timegravityaccstdz"              
 * "timebodyaccjerkmeanx"             
 * "timebodyaccjerkmeany"            
 * "timebodyaccjerkmeanz"             
 * "timebodyaccjerkstdx"             
 * "timebodyaccjerkstdy"              
 * "timebodyaccjerkstdz"             
 * "timebodygyromeanx"                
 * "timebodygyromeany"               
 * "timebodygyromeanz"                
 * "timebodygyrostdx"                
 * "timebodygyrostdy"                 
 * "timebodygyrostdz"                
 * "timebodygyrojerkmeanx"            
 * "timebodygyrojerkmeany"           
 * "timebodygyrojerkmeanz"            
 * "timebodygyrojerkstdx"            
 * "timebodygyrojerkstdy"             
 * "timebodygyrojerkstdz"            
 * "timebodyaccmagmean"               
 * "timebodyaccmagstd"               
 * "timegravityaccmagmean"            
 * "timegravityaccmagstd"            
 * "timebodyaccjerkmagmean"           
 * "timebodyaccjerkmagstd"           
 * "timebodygyromagmean"              
 * "timebodygyromagstd"              
 * "timebodygyrojerkmagmean"          
 * "timebodygyrojerkmagstd"          
 * "frequencybodyaccmeanx"            
 * "frequencybodyaccmeany"           
 * "frequencybodyaccmeanz"            
 * "frequencybodyaccstdx"            
 * "frequencybodyaccstdy"             
 * "frequencybodyaccstdz"            
 * "frequencybodyaccjerkmeanx"        
 * "frequencybodyaccjerkmeany"       
 * "frequencybodyaccjerkmeanz"        
 * "frequencybodyaccjerkstdx"        
 * "frequencybodyaccjerkstdy"         
 * "frequencybodyaccjerkstdz"        
 * "frequencybodygyromeanx"           
 * "frequencybodygyromeany"          
 * "frequencybodygyromeanz"           
 * "frequencybodygyrostdx"           
 * "frequencybodygyrostdy"            
 * "frequencybodygyrostdz"           
 * "frequencybodyaccmagmean"          
 * "frequencybodyaccmagstd"          
 * "frequencybodybodyaccjerkmagmean"  
 * "frequencybodybodyaccjerkmagstd"  
 * "frequencybodybodygyromagmean"     
 * "frequencybodybodygyromagstd"     
 * "frequencybodybodygyrojerkmagmean"  
 * "frequencybodybodygyrojerkmagstd"